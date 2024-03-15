//
//  FxTabBar.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI

struct FxTabBar: View {
    
    @StateObject var tabbarRouter = TabBarRouter()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // View
               // contentView
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
            CarrotForTabBarView()
                .environmentObject(tabbarRouter)
        case .profile:
            BananaForTabBarView()
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

#Preview {
    FxTabBar()
}
