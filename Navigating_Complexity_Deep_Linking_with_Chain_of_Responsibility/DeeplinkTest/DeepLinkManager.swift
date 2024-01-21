//
//  DeeplinkManager.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import Foundation

protocol DeepLinkFeatureManager {
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool
}

@Observable
class DeepLinkManager {
    var selectedTab: Tab = .feature1
    var features: [DeepLinkFeatureManager]

    init() {
        self.features = [
            DeepLinkManagerFeature1(),
            DeepLinkManagerFeature2(),
            DeepLinkManagerFeature3()
        ]
    }

    func handleDeepLink(deepLink: String) {
        for handler in features {
            if handler.handle(deepLink: deepLink, selectedTab: &selectedTab) {
                return
            }
        }
    }
}
