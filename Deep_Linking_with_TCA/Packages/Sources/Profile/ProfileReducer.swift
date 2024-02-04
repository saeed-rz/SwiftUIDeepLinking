//
//  File.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 04/02/2024.
//

import ComposableArchitecture

@Reducer
public struct ProfileReducer {

    public struct State: Equatable {
        var deepLink = ProfileDeepLinkReducer.State()
        public init() {}
    }

    public enum Action {
        case deepLink(ProfileDeepLinkReducer.Action)
    }

    public init() {}

    public var body: some ReducerOf<Self> {
        Scope(state: \.deepLink, action: \.deepLink) {
            ProfileDeepLinkReducer()
        }
    }
}
