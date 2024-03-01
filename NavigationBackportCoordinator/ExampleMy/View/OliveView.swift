//
//  OliveView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 01.03.2024.
//

import SwiftUI

// MARK: - OliveView

struct OliveView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject private var coordinator: Coordinator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
        }
        .navigationTitle("🫒")
    }
}

#Preview {
    OliveView()
}
