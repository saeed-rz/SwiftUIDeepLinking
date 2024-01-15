//
//  DeeplinkTestApp.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import SwiftUI

@main
struct DeeplinkTestApp: App {
    let deepLinkManager = DeepLinkManager()

    var body: some Scene {
        WindowGroup {
            ContentView(deepLinkManager: deepLinkManager)
                .onOpenURL(perform: { url in
                    deepLinkManager.handleDeepLink(deepLink: url.absoluteString.lowercased())
                })
        }
    }


}
