//
//  CoordinatorTabBar.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import NavigationBackport
import SwiftUI

// MARK: - Coordinator

final class CoordinatorTabBar: ObservableObject {
    
    // MARK: - Properties
    
    @Published var path = NBNavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    // MARK: - Functions sheet
    
    func present(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    // MARK: - Functions fullScreenCover
    
    func fullScreenCover(_ fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func dismissFullScreenCover() {
        fullScreenCover = nil
    }
    
    // MARK: - Functions View
    
    @ViewBuilder
    func build(_ page: Page) -> some View {
        switch page {
        case .banana:
            BananaForTabBarView()
        case .carrot:
            CarrotForTabBarView()
        case .strawberry:
            StrawberryView()
        case .bananaUIKit:
            BananaUIKitViewAssembly()
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

