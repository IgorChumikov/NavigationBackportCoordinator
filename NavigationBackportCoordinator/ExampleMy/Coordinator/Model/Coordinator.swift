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
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    // MARK: - Functions
    
    func present(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func fullScreenCover(_ fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    func dismissFullScreenCover() {
        fullScreenCover = nil
    }
    
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
    
    @ViewBuilder
    func build(_ sheet: Sheet) -> some View {
        switch sheet {
        case .lemon:
            Group {
                LemonView()
            }
        }
    }
    
    @ViewBuilder
    func build(_ fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .olive:
            Group {
                OliveView()
            }
        }
    }
}
