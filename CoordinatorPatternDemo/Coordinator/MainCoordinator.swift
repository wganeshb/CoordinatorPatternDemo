//
//  MainCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 10/08/24.
//

import UIKit
 
class MainCoordinator: Coordinator {
    
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureRootViewController() {
        let loginChildCoordinator = LoginChildCoordinator(navigationController: self.navigationController)
        childCoordinator.append(loginChildCoordinator)
        loginChildCoordinator.configureRootViewController()
    }
    
    
     
}
