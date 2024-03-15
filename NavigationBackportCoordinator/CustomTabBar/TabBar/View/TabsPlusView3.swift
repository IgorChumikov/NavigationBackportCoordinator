//
//  TabsPlusView3.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI
import NavigationBackport

struct TabsPlusView3: View {
    
    // MARK: - Properties
    
    @State private var selectedTabIndex = 0
    
    // MARK: - Private properties
    
    @StateObject private var coordinator = CoordinatorTabBar()
    @StateObject var tabbarRouter = TabBarRouter()
    
    // MARK: - Content
    
    var body: some View {
        NBNavigationStack(path: $coordinator.path) {
            VStack {
                EmptyView()
                    .withTabBar(isShowBarTab: false)
            }
            .nbNavigationDestination(for: Page.self) { page in
                coordinator.build(page)
            }
            .sheet(item: $coordinator.sheet) { sheet in
                coordinator.build(sheet)
            }
            .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                coordinator.build(fullScreenCover)
            }
        }
        .environmentObject(coordinator)
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
}

#Preview {
    TabsPlusView3()
}
