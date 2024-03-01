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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    
    private func setupUI() {
        view.backgroundColor = .white
        
        let pushButton = UIButton()
        pushButton.setTitle("Push 🥕", for: .normal)
        pushButton.setTitleColor(.blue, for: .normal)
        pushButton.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        
        let popButton = UIButton()
        popButton.setTitle("Pop", for: .normal)
        popButton.setTitleColor(.blue, for: .normal)
        popButton.addTarget(self, action: #selector(popButtonTapped), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [pushButton, popButton])
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
}


