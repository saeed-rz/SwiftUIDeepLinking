//
//  Feature2.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import SwiftUI

struct Feature2: View {
    @State var deepLinkManager: DeepLinkManagerFeature2

    init(deepLinkManager: DeepLinkManagerFeature2? = nil) {
        self.deepLinkManager = deepLinkManager ?? .init()
    }

    var body: some View {
        NavigationSplitView {
            VStack {
                TextField(
                    "",
                    text: .init(
                        get: { deepLinkManager.name },
                        set: { deepLinkManager.name = $0 }
                    ),
                    prompt: Text("Type your name").foregroundStyle(.white)
                )
                .padding()
                .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
        } content: {
            Text("Your name is \(deepLinkManager.name)")
                .foregroundStyle(.black)
                .padding()
            VStack {
                TextField(
                    "",
                    text: .init(
                        get: { deepLinkManager.surname },
                        set: { deepLinkManager.surname = $0 }
                    ),
                    prompt: Text("Type your surname").foregroundStyle(.white)
                )
                .padding()
                .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
        } detail: {
            VStack {
                Text("Your name and surname is \(deepLinkManager.name) \(deepLinkManager.surname)")
                    .foregroundStyle(.black)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    Feature2()
}
