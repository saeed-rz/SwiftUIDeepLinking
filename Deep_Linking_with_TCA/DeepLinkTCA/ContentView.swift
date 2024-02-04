//
//  ContentView.swift
//  DeepLinkTCA
//
//  Created by Saeid Rezaeisadrabadi on 21/01/2024.
//

import ComposableArchitecture
import Core
import Home
import Profile
import Setting
import SwiftUI

struct ContentView: View {

    let store: StoreOf<MainDeepLinkReducer>

    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            TabView {
                HomeView(
                    store: store.scope(state: \.home, action: \.home)
                )
                .tabItem {
                    Text("Home")
                }
                .tag(Tab.feature1)

                ProfileView(
                    store: store.scope(state: \.profile, action: \.profile)
                )
                .tabItem {
                    Text("Profile")
                }
                .tag(Tab.feature2)

                SettingView()
                    .tabItem {
                        Text("Setting")
                    }
                    .tag(Tab.feature3)
            }
        }
    }
}

#Preview {
    ContentView(
        store: .init(initialState: .init()) {
            MainDeepLinkReducer()
        }
    )
}
