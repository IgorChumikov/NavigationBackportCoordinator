//
//  BananaForTabBarView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI

struct BananaForTabBarView: View {

    // MARK: - Content
    
    var body: some View {
        List {
            Button("Push SwiftUI 🥕") {
            
            }
            Button("Pop") {
       
            }
            Button("Push UIKit 🍌") {
        
            }
        }
        .navigationTitle("🍌")
    }
}

#Preview {
    BananaForTabBarView()
}
