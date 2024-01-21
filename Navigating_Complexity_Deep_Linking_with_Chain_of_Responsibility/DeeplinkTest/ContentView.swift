//
//  ContentView.swift
//  DeeplinkTest
//
//  Created by Saeid Rezaeisadrabadi on 14/01/2024.
//

import SwiftUI

struct ContentView: View {

    @State var deepLinkManager: DeepLinkManager

    var body: some View {
        TabView(selection: $deepLinkManager.selectedTab) {
            Feature1()
                .tabItem { 
                    Text("Feature 1")
                }
                .tag(Tab.feature1)
            Feature2(deepLinkManager: deepLinkManager.features[1] as? DeepLinkManagerFeature2)
                .tabItem {
                    Text("Feature 2")
                }
                .tag(Tab.feature2)
            Feature3()
                .tabItem {
                    Text("Feature 3")
                }
                .tag(Tab.feature3)
        }
    }
}

#Preview {
    ContentView(deepLinkManager: .init())
}
