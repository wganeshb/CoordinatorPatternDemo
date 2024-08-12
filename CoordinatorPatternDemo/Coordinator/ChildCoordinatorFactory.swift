//
//  ChildCoordinatorFactory.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 12/08/24.
//

import UIKit

enum ChildCoordinatorType {
    case login
    case home
}

class ChildCoordinatorFactory {
    static func create(with _navigationController: UINavigationController, type: ChildCoordinatorType) -> ChildCoordinator {
        switch type {
        case .login:
            return LoginChildCoordinator(navigationController: _navigationController)
        case .home:
            return HomeChildCoordinator(navigationController: _navigationController)
        }
    }
}
