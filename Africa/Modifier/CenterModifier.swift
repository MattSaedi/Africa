//
//  CenterModifier.swift
//  Africa
//
//  Created by MahDi SaeDi on 4/17/21.
//

import SwiftUI

struct CenterModifier:ViewModifier{
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
