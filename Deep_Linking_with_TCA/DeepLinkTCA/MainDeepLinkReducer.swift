//
//  MainDeepLinkReducer.swift
//  DeepLinkTCA
//
//  Created by Saeid Rezaeisadrabadi on 04/02/2024.
//

import ComposableArchitecture
import Foundation
import Home
import Profile

@Reducer
struct MainDeepLinkReducer {
    
    struct State: Equatable {
        var home = HomeReducer.State()
        var profile = ProfileReducer.State()
    }

    enum Action {
        case deepLink(URL)
        case home(HomeReducer.Action)
        case profile(ProfileReducer.Action)
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case let .deepLink(deepLink):
                    return .send(.home(.deepLink(.handle(deepLink))))

                case let .home(.deepLink(.delegate(.next(deepLink)))):
                    return .send(.profile(.deepLink(.handle(deepLink))))

                case .profile(.deepLink(.delegate(.next))):
                    return .none

                case .home, .profile:
                    return .none
            }
        }
        Scope(state: \.home, action: \.home) {
            HomeReducer()
        }
        Scope(state: \.profile, action: \.profile) {
            ProfileReducer()
        }
    }
}
