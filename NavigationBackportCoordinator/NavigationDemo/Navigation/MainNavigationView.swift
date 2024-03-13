//
//  MainNavigationView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 13.03.2024.
//

import SwiftUI

/// Главный вью навигации
struct MainNavigationView<Content: View>: View {
    private let content: Content

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                content
            }
            .navigationBarHidden(true)
          //  .ignoresSafeArea(.container, edges: .vertical)
        }
        .navigationViewStyle(.stack)
    }

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
}

#Preview {
    MainNavigationView {
        EmptyView()
    }
}
