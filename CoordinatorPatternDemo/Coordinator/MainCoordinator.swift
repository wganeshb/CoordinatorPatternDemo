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
        loginChildCoordinator.mainCoordinator = self
        loginChildCoordinator.configureRootViewController()
    }
    
    func removeChildCoordinator(child: Coordinator) {
        for(index, coordinator) in childCoordinator.enumerated() {
            if(coordinator === child) {
                debugPrint("childCoordinator type : \(childCoordinator.debugDescription)")
                childCoordinator.remove(at: index)
                break
            }
        }
    }
    
}
