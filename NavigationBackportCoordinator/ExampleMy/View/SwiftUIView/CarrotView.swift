//
//  CarrotView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import SwiftUI
import NavigationBackport

struct CarrotView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var navigator: PathNavigator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Pop") {
                navigator.pop()
            }
            Button("Pop to root") {
                navigator.popToRoot()
            }
        }
        .navigationTitle("🥕")
    }
}

#Preview {
    CarrotView()
}
