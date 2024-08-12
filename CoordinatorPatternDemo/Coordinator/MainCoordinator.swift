//
//  MainCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 10/08/24.
//

import UIKit
 
class MainCoordinator: ParentCoordinator {
    
    var childCoordinator: [ChildCoordinator] = [ChildCoordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureRootViewController() {
        let loginChildCoordinator = ChildCoordinatorFactory.create(with: self.navigationController, type: .login)
        childCoordinator.append(loginChildCoordinator)
        loginChildCoordinator.parentCoordinator = self
        loginChildCoordinator.configureChildViewController()
    }
    
    func removeChildCoordinator(child: ChildCoordinator) {
        for(index, coordinator) in childCoordinator.enumerated() {
            if(coordinator === child) {
                debugPrint("childCoordinator type : \(childCoordinator.debugDescription)")
                childCoordinator.remove(at: index)
                break
            }
        }
    }
    
}
