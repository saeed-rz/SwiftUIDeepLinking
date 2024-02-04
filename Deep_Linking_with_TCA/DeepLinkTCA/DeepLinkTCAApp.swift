//
//  DeepLinkTCAApp.swift
//  DeepLinkTCA
//
//  Created by Saeid Rezaeisadrabadi on 21/01/2024.
//

import ComposableArchitecture
import SwiftUI

@main
struct DeepLinkTCAApp: App {

    let store: StoreOf<MainDeepLinkReducer> = Store(initialState: .init()) {
        MainDeepLinkReducer()
    }
    var viewStore: ViewStoreOf<MainDeepLinkReducer> {
        ViewStoreOf<MainDeepLinkReducer>(store, observe: { $0 })
    }

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
                .onOpenURL { url in
                    viewStore.send(.deepLink(url))
                }
        }
    }
}
