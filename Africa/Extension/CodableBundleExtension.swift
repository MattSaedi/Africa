//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by MahDi SaeDi on 4/13/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file:String) -> T {
        // 1. Locate  the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // 2. Create a property  for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decode data
        guard let loaded = try? decoder.decode(T.self,from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        // 5. Return the ready-to-use data
        return loaded
    }
}
