//
//  HomeChildCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 12/08/24.
//

import UIKit

class HomeChildCoordinator: ChildCoordinator {
    
    weak var parentCoordinator: ParentCoordinator?
    var navigationController: UINavigationController
    private var homeViewUsername: String = ""
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureChildViewController() {
        let homeViewController = HomeViewController.instantiateFromStoryboard()
        homeViewController.username = self.homeViewUsername
        self.navigationController.pushViewController(homeViewController, animated: true)
    }
    
    func passParameter(value: any Decodable) {
        guard let parameter = value as? HomeChildParameter else { return }
        self.homeViewUsername = parameter.userName
    }
    
    deinit {
        debugPrint("Deinitializing \(self)")
    }
}
