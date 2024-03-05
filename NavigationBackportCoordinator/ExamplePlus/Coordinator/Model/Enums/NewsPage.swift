//
//  NewsPage.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//


import Foundation

// MARK: - ListPage

enum NewsPage: String, Identifiable {
    case news
    
    var id: String {
        self.rawValue
    }
}
