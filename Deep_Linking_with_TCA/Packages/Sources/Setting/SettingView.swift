//
//  SwiftUIView.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 21/01/2024.
//

import SwiftUI

public struct SettingView: View {

    public init() {}

    public var body: some View {
        VStack {
            Image(.background3)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .padding()
    }
}

#Preview {
    SettingView()
}
