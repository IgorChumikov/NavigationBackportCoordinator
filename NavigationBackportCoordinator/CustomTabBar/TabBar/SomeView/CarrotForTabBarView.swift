//
//  CarrotForTabBarView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI
import NavigationBackport

struct CarrotForTabBarView: View {
    
    @EnvironmentObject var navigator: PathNavigator
    
    var body: some View {
        List {
            Button("Push SwiftUI 🍓") {
                navigator.push(Page.strawberry)
            }
            Button("Pop") {
                navigator.pop()
            }
            Button("Pop to root") {
                navigator.popToRoot()
            }
        }
        .withTabBar(isShowBarTab: true)
        .navigationTitle("🥕")
    }
}

#Preview {
    CarrotForTabBarView()
}
