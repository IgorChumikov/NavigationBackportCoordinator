//
//  Page.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import Foundation

// MARK: - Page

enum Page: String, Identifiable {
    case banana, carrot, strawberry, bananaUIKit
    
    var id: String {
        self.rawValue
    }
}
