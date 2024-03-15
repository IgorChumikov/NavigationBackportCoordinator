//
//  TabBarRouter.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI

final class TabBarRouter: ObservableObject {
    @Published var currentPage: Page2 = .home
}

enum Page2 {
    case home
    case map
    case profile
}
