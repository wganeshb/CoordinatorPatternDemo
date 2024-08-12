//
//  LoginViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 10/08/24.
//

import UIKit

class LoginViewController: UIViewController, CoordinatorBoard {
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    weak var mainCoordinator: MainCoordinator?
    
    @IBAction func didTapOnResetPasswordButton(_ sender: Any) {
        mainCoordinator?.navigateToResetPasswprdViewController()
    }
    
    @IBAction func didTapOnSignupButton(_ sender: Any) {
        mainCoordinator?.navigateToSignupViewController()
    }
   
    @IBAction func didTapOnLoginButton(_ sender: Any) {
        mainCoordinator?.navigateToHomeViewController(username: txtUsername.text ?? "")
    }
    
    deinit {
        debugPrint("\(self) deinitilized in \(#function)")
    }
}

