//
//  File.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 04/02/2024.
//

import ComposableArchitecture
import Core
import Foundation

@Reducer
public struct HomeDeepLinkReducer {

    public struct State: Equatable {
        
    }

    public enum Action {
        case handle(URL)
        case delegate(DeepLinkDelegate)
    }

    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case let .handle(deepLink):
                    return .send(.delegate(.next(deepLink)))

                case .delegate:
                    return .none
            }
        }
    }
}
