//
//  Sheet.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 01.03.2024.
//

import Foundation

// MARK: - Sheet

enum Sheet: String, Identifiable {
    case lemon
    
    var id: String {
        self.rawValue
    }
}
