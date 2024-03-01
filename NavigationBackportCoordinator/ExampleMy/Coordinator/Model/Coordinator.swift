//
//  Coordinator.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 01.03.2024.
//

import SwiftUI
import NavigationBackport

// MARK: - Coordinator

final class Coordinator: ObservableObject {
    
    // MARK: - Properties
    
    @Published var path = NBNavigationPath()
    
    // MARK: - Functions View
    
    @ViewBuilder
    func build(_ page: Page) -> some View {
        switch page {
        case .banana:
            BananaView()
        case .carrot:
            CarrotView()
        }
    }
}
