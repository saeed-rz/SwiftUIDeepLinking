//
//  DeepLinkManagerFeature3.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import Foundation

class DeepLinkManagerFeature3: DeepLinkFeatureManager {
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool {
        if deepLink.contains("feature3") {
            selectedTab = .feature3
            return true
        }

        return false
    }
}
