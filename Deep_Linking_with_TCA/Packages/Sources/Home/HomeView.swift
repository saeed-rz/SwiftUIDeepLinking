//
//  SwiftUIView.swift
//  
//
//  Created by Saeid Rezaeisadrabadi on 21/01/2024.
//

import ComposableArchitecture
import SwiftUI

public struct HomeView: View {
    
    let store: StoreOf<HomeReducer>

    public init(store: StoreOf<HomeReducer>) {
        self.store = store
    }

    public var body: some View {
        VStack {
            Image(.background1)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .padding()

    }
}

#Preview {
    HomeView(
        store: .init(initialState: .init()) {
            HomeReducer()
        }
    )
}
