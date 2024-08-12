//
//  HomeChildCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 12/08/24.
//

import UIKit

class HomeChildCoordinator: Coordinator {
    
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    private var homeViewUsername: String
    
    init(navigationController: UINavigationController, username: String) {
        self.navigationController = navigationController
        self.homeViewUsername = username
    }
    
    func configureRootViewController() {
        let homeViewController = HomeViewController.instantiateFromStoryboard()
        homeViewController.username = self.homeViewUsername
        self.navigationController.pushViewController(homeViewController, animated: true)
    }
    
    deinit {
        debugPrint("Deinitializing \(self)")
    }
}
