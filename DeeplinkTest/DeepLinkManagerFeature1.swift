//
//  DeeplinkManagerFeature1.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import Foundation

class DeepLinkManagerFeature1: DeepLinkFeatureManager {
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool {
        if deepLink.contains("feature1") {
            selectedTab = .feature1
            return true
        }

        return false
    }
}
