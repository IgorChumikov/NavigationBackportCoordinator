//
//  UINavigationController+UIGestureRecognizerDelegate.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 06.03.2024.
//

import UIKit

private enum Constants {
    static let minimumViewControllerCount: Int = 1
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > Constants.minimumViewControllerCount
    }
}
