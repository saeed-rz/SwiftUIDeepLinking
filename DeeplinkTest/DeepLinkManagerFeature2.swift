//
//  DeeplinkManagerFeature2.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import Foundation

class DeepLinkManagerFeature2: DeepLinkFeatureManager {
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool {
        if deepLink.contains("feature2") {
            selectedTab = .feature2
            return true
        }

        return false
    }
}
