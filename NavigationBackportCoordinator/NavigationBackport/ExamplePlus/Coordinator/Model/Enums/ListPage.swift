//
//  ListPage.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//

import Foundation

// MARK: - ListPage

enum ListPage: String, Identifiable {
    case news, codes, reviews
    
    var id: String {
        self.rawValue
    }
}
