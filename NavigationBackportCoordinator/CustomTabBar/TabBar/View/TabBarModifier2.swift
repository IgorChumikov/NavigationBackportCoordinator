//
//  TabBarModifier2.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI

struct TabBarModifier2: ViewModifier {
    @StateObject var tabbarRouter = TabBarRouter()
    
    let isShowBarTab: Bool
    
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            VStack {
                if  isShowBarTab {
                    content
                } else {
                    contentView
                }
                Spacer()
                // Tabbar
                tabBar(geometry: geometry)
            }
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
    
    @ViewBuilder
    private var contentView: some View {
        switch tabbarRouter.currentPage {
        case .home:
            BananaForTabBarView()
                .environmentObject(tabbarRouter)
        case .map:
            FirstView()
                .environmentObject(tabbarRouter)
        case .profile:
            SecondView()
                .environmentObject(tabbarRouter)
        }
    }
    
    @ViewBuilder
    private func tabBar(geometry: GeometryProxy) -> some View {
        HStack(alignment: .center, spacing: 60) {
            FxTabItem(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "homekit", tabName: "Home", tabbarRouter: tabbarRouter, assignedPage: .home)
            FxTabItem(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "map.fill", tabName: "Map", tabbarRouter: tabbarRouter, assignedPage: .map)
            FxTabItem(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "person.crop.circle", tabName: "Profile", tabbarRouter: tabbarRouter, assignedPage: .profile)
            
        }
        .frame(width: geometry.size.width, height: geometry.size.height/8)
        .background(Color("TabBarBackground").shadow(radius: 2))
    }
}


extension View {
    func withTabBar(isShowBarTab: Bool) -> some View {
        self.modifier(TabBarModifier2(isShowBarTab: isShowBarTab))
    }
}


