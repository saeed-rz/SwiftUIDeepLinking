//
//  File.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 04/02/2024.
//

import ComposableArchitecture

@Reducer
public struct ProfileDeepLinkDestinationReducer {

    public enum State: Equatable {
        case account(AccountReducer.State)
    }

    public enum Action {
        case account(AccountReducer.Action)
    }

    public var body: some ReducerOf<Self> {
        Scope(state: \.account, action: \.account) {
            AccountReducer()
        }
    }
}
