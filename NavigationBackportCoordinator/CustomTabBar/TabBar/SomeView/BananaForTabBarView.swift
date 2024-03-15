//
//  BananaForTabBarView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI
import NavigationBackport

struct BananaForTabBarView: View {
    
    @EnvironmentObject var navigator: PathNavigator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Push SwiftUI 🥕") {
                navigator.push(Page.carrot)
            }
            Button("Pop") {
                navigator.pop()
            }
            Button("Push UIKit 🍌") {
                
            }
            
            ForEach(0..<30) { index in
                Text("Banana \(index + 1)")
            }
        }
        .navigationTitle("🍌")
    }
}

#Preview {
    BananaForTabBarView()
}
