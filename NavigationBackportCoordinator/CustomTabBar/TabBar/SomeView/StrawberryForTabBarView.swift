//
//  StrawberryForTabBarView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI
import NavigationBackport

struct StrawberryForTabBarView: View {
    // MARK: - Properties
    
    @EnvironmentObject var navigator: PathNavigator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Pop") {
                navigator.pop()
            }
        }
        .navigationTitle("🍓")
    }
}

#Preview {
    StrawberryForTabBarView()
}
