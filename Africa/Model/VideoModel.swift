//
//  VideoModel.swift
//  Africa
//
//  Created by MahDi SaeDi on 4/14/21.
//

import Foundation

struct Video:Codable,Identifiable {
    let id:String
    let name:String
    let headline:String
    // Computed Property
    var thumbnail:String{
        "video-\(id)"
    }
}
