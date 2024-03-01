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
                Button("Present sheet SwiftUI🍋") {
                    coordinator.present(.lemon)
                }
                Button("Present fullScreenCover SwiftUI🫒") {
                    coordinator.fullScreenCover(.olive)
                }
            }
            .nbNavigationDestination(for: Page.self) { page in
                coordinator.build(page)
            }
            .sheet(item: $coordinator.sheet) { sheet in
                coordinator.build(sheet)
            }
            .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                coordinator.build(fullScreenCover)
            }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
