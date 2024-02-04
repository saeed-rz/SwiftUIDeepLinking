//
//  File.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 04/02/2024.
//

import Core
import ComposableArchitecture
import Foundation

@Reducer
public struct ProfileDeepLinkReducer {

    public struct State: Equatable {
        @PresentationState var destination: ProfileDeepLinkDestinationReducer.State?
    }

    public enum Action {
        case handle(URL)
        case delegate(DeepLinkDelegate)
        case destination(PresentationAction<ProfileDeepLinkDestinationReducer.Action>)
    }

    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case let .handle(deepLink):
                    guard let destination = handle(deepLink: deepLink) else {
                        return .send(.delegate(.next(deepLink)))
                    }

                    state.destination = destination
                    return .send(.delegate(.handled(deepLink)))

                case .delegate, .destination:
                    return .none
            }
        }
        .ifLet(\.$destination, action: \.destination) {
            ProfileDeepLinkDestinationReducer()
        }
    }

    private func handle(deepLink: URL) -> ProfileDeepLinkDestinationReducer.State? {
        deepLink.absoluteString.contains("account") ? .account(.init()) : nil
    }
}
