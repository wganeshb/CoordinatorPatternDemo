//
//  Coordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 10/08/24.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var childCoordinator: [Coordinator] { get set }
    func configureRootViewController()
}
