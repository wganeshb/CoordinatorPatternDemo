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
    weak var mainCoordinator: MainCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureRootViewController() {
        let loginViewController = LoginViewController.instantiateFromStoryboard()
        loginViewController.loginChildCoordinator = self
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
        let homeChildCoordinator = HomeChildCoordinator(navigationController: self.navigationController, username: username)
        mainCoordinator?.childCoordinator.append(homeChildCoordinator)
        mainCoordinator?.removeChildCoordinator(child: self)
        homeChildCoordinator.configureRootViewController()
    }
    
}
