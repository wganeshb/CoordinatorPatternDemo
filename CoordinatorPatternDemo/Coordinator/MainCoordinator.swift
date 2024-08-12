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
        let loginViewController = LoginViewController.instantiateFromStoryboard()
        loginViewController.mainCoordinator = self
        self.navigationController.pushViewController(loginViewController, animated: true)
    }
    
    func navigateToResetPasswprdViewController() {
        let resetPasswordViewController = ResetPasswordViewController.instantiateFromStoryboard()
        self.navigationController.pushViewController(resetPasswordViewController, animated: true)
    }
    
    func navigateToSignupViewController() {
        let signupViewController = SignupViewController.instantiateFromStoryboard()
        self.navigationController.pushViewController(signupViewController, animated: true)
    }
    
    func navigateToHomeViewController(username: String) {
        let homeViewController = HomeViewController.instantiateFromStoryboard()
        homeViewController.username = username
        self.navigationController.pushViewController(homeViewController, animated: true)
    }
     
}
