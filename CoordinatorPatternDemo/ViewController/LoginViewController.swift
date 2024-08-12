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
    
    weak var loginChildCoordinator: LoginChildCoordinator?
    
    @IBAction func didTapOnResetPasswordButton(_ sender: Any) {
        loginChildCoordinator?.navigateToResetPasswprdViewController()
    }
    
    @IBAction func didTapOnSignupButton(_ sender: Any) {
        loginChildCoordinator?.navigateToSignupViewController()
    }
   
    @IBAction func didTapOnLoginButton(_ sender: Any) {
        
        if loginChildCoordinator==nil {
            debugPrint("loginChildCoordinator is nil")
        }
        loginChildCoordinator?.navigateToHomeViewController(username: txtUsername.text ?? "")
    }
    
    deinit {
        debugPrint("\(self) deinitilized in \(#function)")
    }
}

