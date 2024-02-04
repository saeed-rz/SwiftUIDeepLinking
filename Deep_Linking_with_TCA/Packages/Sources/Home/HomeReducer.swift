//
//  File.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 04/02/2024.
//

import ComposableArchitecture

@Reducer
public struct HomeReducer {
    
    public struct State: Equatable {
        var deepLink = HomeDeepLinkReducer.State()

        public init() {}
    }

    public enum Action {
        case deepLink(HomeDeepLinkReducer.Action)
    }

    public init() {}

    public var body: some ReducerOf<Self> {
        Scope(state: \.deepLink, action: \.deepLink) {
            HomeDeepLinkReducer()
        }
    }
}
