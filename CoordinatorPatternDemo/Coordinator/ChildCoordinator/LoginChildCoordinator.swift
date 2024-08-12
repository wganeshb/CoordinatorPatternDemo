//
//  LoginChildCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 12/08/24.
//

import UIKit

class LoginChildCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinator: [any Coordinator] = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureRootViewController() {
        
    }
}
