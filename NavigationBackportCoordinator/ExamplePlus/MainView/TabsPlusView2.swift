//
//  TabsPlusView2.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 06.03.2024.
//

import SwiftUI

struct TabsPlusView2: View {
    
    // MARK: - Properties
    
    @State private var selectedTabIndex = 0
    
    // MARK: - Private properties
    
    
    // MARK: - Content
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            CoordinatorView()
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
    }
}

#Preview {
    TabsPlusView2()
}
