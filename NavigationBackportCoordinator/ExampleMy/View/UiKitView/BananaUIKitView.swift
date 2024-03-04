//
//  BananaUIKitView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 01.03.2024.
//

import UIKit
import NavigationBackport

// MARK: - BananaUIKitView

final class BananaUIKitView: UIViewController {

    // MARK: - Properties
    
    var navigator: PathNavigator!
    var coordinator: Coordinator!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    
    private func setupUI() {
        view.backgroundColor = .white
        
        let pushButton = UIButton()
        pushButton.setTitle("Push SwiftUI🥕", for: .normal)
        pushButton.setTitleColor(.blue, for: .normal)
        pushButton.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        
        let popButton = UIButton()
        popButton.setTitle("Pop", for: .normal)
        popButton.setTitleColor(.blue, for: .normal)
        popButton.addTarget(self, action: #selector(popButtonTapped), for: .touchUpInside)
        
        let sheetButton = UIButton()
        sheetButton.setTitle("Present sheet SwiftUI🍋", for: .normal) // Corrected button title
        sheetButton.setTitleColor(.blue, for: .normal)
        sheetButton.addTarget(self, action: #selector(presentSheetSwiftUI), for: .touchUpInside) // Corrected action
        
        let fullScreenCoverButton = UIButton()
        fullScreenCoverButton.setTitle("Present fullScreenCover SwiftUI🫒", for: .normal) // Corrected button title
        fullScreenCoverButton.setTitleColor(.blue, for: .normal)
        fullScreenCoverButton.addTarget(self, action: #selector(presentFullScreenCoverSwiftUI), for: .touchUpInside) // Corrected action
        
        let stackView = UIStackView(arrangedSubviews: [pushButton, popButton, sheetButton, fullScreenCoverButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        title = "🍌"
    }

    
    // MARK: - Actions
    
    @objc private func pushButtonTapped() {
        navigator.push(Page.carrot)
    }
    
    @objc private func popButtonTapped() {
        navigator.pop()
    }
    
    @objc private func presentSheetSwiftUI() {
        coordinator.present(.lemon)
    }
    
    @objc private func presentFullScreenCoverSwiftUI() {
        coordinator.fullScreenCover(.olive)
    }
}


