//
//  BananaView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import SwiftUI
import NavigationBackport

struct BananaView: View {
    
    // MARK: - Properties
    @EnvironmentObject var navigator: PathNavigator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Push 🥕") {
                navigator.push(Page.carrot)
            }
            Button("Pop") {
                navigator.pop()
            }
        }
        .navigationTitle("🍌")
    }
}

#Preview {
    BananaView()
}
