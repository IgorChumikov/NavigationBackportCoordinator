//
//  StrawberryView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 01.03.2024.
//

import SwiftUI
import NavigationBackport

// MARK: - LemonView

struct StrawberryView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var navigator: PathNavigator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("pop") {
                navigator.pop()
            }
        }
        .navigationTitle("🍓")
    }
}

#Preview {
    StrawberryView()
}
