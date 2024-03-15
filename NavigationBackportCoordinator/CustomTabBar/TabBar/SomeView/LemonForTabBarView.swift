//
//  LemonForTabBarView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI

struct LemonForTabBarView: View {
    var body: some View {
        List {
            Button("Dismiss") {
             //   coordinator.dismissSheet()
            }
        }
        .navigationTitle("🍋")
    }
}

#Preview {
    LemonForTabBarView()
}
