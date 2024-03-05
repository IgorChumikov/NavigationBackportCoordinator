//
//  CoordinatorPlus.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//

import SwiftUI
import NavigationBackport

// MARK: - Coordinator

final class CoordinatorPlus: ObservableObject {
    
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
    func build(_ page: NewsPage) -> some View {
        switch page {
        case .news :
            NewsPageView()
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

