//
//  CreditsView.swift
//  Africa
//
//  Created by MahDi SaeDi on 4/17/21.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Matt Saedi
    All right reserved
    Better Apps ♡ Less Code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }//:VSTACK
        .padding()
        .opacity(0.4)
    }
}
// MARK: - PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
