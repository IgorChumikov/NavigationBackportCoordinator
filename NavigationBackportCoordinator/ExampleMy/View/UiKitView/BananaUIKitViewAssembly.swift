//
//  BananaUIKitViewAssembly.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 01.03.2024.
//

import SwiftUI
import NavigationBackport

// MARK: - BananaUIKitViewAssembly

struct BananaUIKitViewAssembly: UIViewControllerRepresentable {
    
    // MARK: - Properties
    
    @EnvironmentObject var navigator: PathNavigator
    
    // MARK: - UIViewControllerRepresentable
    
    func makeUIViewController(context: Context) -> UIViewController {
        let bananaViewController = BananaUIKitView()
        bananaViewController.navigator = navigator
        return bananaViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Update the view controller if needed
    }
}
