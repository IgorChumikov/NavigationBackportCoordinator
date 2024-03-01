//
//  CoordinatorView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import NavigationBackport
import SwiftUI

// MARK: - CoordinatorView

struct CoordinatorView: View {

    // MARK: - Properties
    
    @StateObject private var coordinator = Coordinator()
    
    // MARK: - Content
    
    var body: some View {
        NBNavigationStack(path: $coordinator.path) {
            List {
                NBNavigationLink("Push SwiftUI🍌", value: Page.banana)
            }
            .nbNavigationDestination(for: Page.self) { page in
                coordinator.build(page)
            }
        }
    }
}

#Preview {
    CoordinatorView()
}
