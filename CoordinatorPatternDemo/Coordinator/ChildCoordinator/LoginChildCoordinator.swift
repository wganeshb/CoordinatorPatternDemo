//
//  LoginChildCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 12/08/24.
//

import UIKit

class LoginChildCoordinator: ChildCoordinator {
    
    weak var parentCoordinator: ParentCoordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configureChildViewController() {
        let loginViewController = LoginViewController.instantiateFromStoryboard()
        loginViewController.loginChildCoordinator = self
        self.navigationController.pushViewController(loginViewController, animated: true)
    }
    
    func navigateToResetPasswordViewController() {
        let resetPasswordViewController = ResetPasswordViewController.instantiateFromStoryboard()
        self.navigationController.pushViewController(resetPasswordViewController, animated: true)
    }
    
    func navigateToSignupViewController() {
        let signupViewController = SignupViewController.instantiateFromStoryboard()
        self.navigationController.pushViewController(signupViewController, animated: true)
    }
    
    func navigateToHomeViewController(username: String) {
        let homeChildCoordinator = ChildCoordinatorFactory.create(with: parentCoordinator!.navigationController, type: .home)
        homeChildCoordinator.passParameter(value: HomeChildParameter(userName: username))
        
        parentCoordinator?.childCoordinator.append(homeChildCoordinator)
        homeChildCoordinator.configureChildViewController()
    }
    
    deinit {
        debugPrint("Deinitializing \(self)")
    }
    
}
