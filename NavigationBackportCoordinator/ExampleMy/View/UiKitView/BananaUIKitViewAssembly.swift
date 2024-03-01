//
//  BananaUIKitViewAssembly.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 01.03.2024.
//

import SwiftUI

// MARK: - BananaUIKitViewAssembly

struct BananaUIKitViewAssembly: UIViewControllerRepresentable {
    
    // MARK: - Properties
    
    var coordinator: Coordinator
    
    // MARK: - UIViewControllerRepresentable
    
    func makeUIViewController(context: Context) -> UIViewController {
        let bananaViewController = BananaUIKitView()
        bananaViewController.coordinator = coordinator
        return bananaViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Update the view controller if needed
    }
}
