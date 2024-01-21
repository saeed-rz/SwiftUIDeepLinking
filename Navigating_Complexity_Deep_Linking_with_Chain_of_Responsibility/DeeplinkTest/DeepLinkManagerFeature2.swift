//
//  DeeplinkManagerFeature2.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import Foundation

@Observable
class DeepLinkManagerFeature2: DeepLinkFeatureManager {
    var name: String = ""
    var surname: String = ""
    
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool {
        if deepLink.contains("feature2") {
            selectedTab = .feature2
            extractData(from: deepLink)
            return true
        }

        return false
    }

    private func extractData(from deepLink: String) {
        let temp = deepLink.replacingOccurrences(of: "deeplink://feature2?", with: "")
        let params = temp.components(separatedBy: "&")
        guard params.count == 2 else { return }
        name = params[0].replacingOccurrences(of: "name=", with: "").uppercased()
        surname = params[1].replacingOccurrences(of: "surename=", with: "").uppercased()
    }
}
