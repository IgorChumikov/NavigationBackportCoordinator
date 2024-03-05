//
//  TabsPlusView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//

import SwiftUI

// MARK: - TabsPlusView

struct TabsPlusView: View {
    
    // MARK: - Properties
    
    @State private var selectedTabIndex = 0
    
    // MARK: - init
    
    init() {
        UITabBar.appearance().backgroundColor = .lightGray
    }
    
    // MARK: - Content
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            Text("Содержимое вкладки 1")
                .tag(0)
                .tabItem {
                    Image(systemName: "house")
                    Text("First")
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
        
    }
}

#Preview {
    TabsPlusView()
}
