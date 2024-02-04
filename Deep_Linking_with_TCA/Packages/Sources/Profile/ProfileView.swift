//
//  SwiftUIView.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 21/01/2024.
//

import ComposableArchitecture
import SwiftUI

public struct ProfileView: View {

    let store: StoreOf<ProfileReducer>

    public init(store: StoreOf<ProfileReducer>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack {
                Image(.background2)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .padding()
            .sheet(
                store: store.scope(
                    state: \.deepLink.$destination.account,
                    action: \.deepLink.destination.account
                )
            ) { store in
                Text("Account view")
            }
        }
    }
}

#Preview {
    ProfileView(
        store: .init(initialState: .init()) {
            ProfileReducer()
        }
    )
}
