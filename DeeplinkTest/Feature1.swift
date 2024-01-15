//
//  Feature1.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import SwiftUI

struct Feature1: View {
    var body: some View {
        VStack {
            Image(.background1)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .padding()

    }
}

#Preview {
    Feature1()
}
