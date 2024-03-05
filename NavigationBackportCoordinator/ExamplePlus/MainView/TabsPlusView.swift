//
//  TabsPlusView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//

import SwiftUI
import NavigationBackport

// MARK: - TabsPlusView

struct TabsPlusView: View {
    
    // MARK: - Properties
    
    @State private var selectedTabIndex = 0
    
    // MARK: - Private properties
    
    @StateObject private var coordinator = CoordinatorPlus()
    
    // MARK: - Content
    
    var body: some View {
        NBNavigationStack(path: $coordinator.path) {
            TabView(selection: $selectedTabIndex) {
                HousePlusView()
                    .tag(0)
                    .tabItem {
                        Image(systemName: "house")
                        Text("House")
                    }
                Text("Содержимое вкладки 2")
                    .tag(1)
                    .tabItem {
                        Image(systemName: "folder")
                        Text("Second")
                    }
                Text("Содержимое вкладки 3")
                    .tag(2)
                    .tabItem {
                        Image(systemName: "highlighter")
                        Text("Third")
                    }
            }
            .nbNavigationDestination(for: NewsPage.self) { page in
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
}

#Preview {
    TabsPlusView()
}
