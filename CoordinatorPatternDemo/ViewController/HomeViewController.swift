//
//  ViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 10/08/24.
//

import UIKit

class HomeViewController: UIViewController, CoordinatorBoard {

    @IBOutlet weak var welcomeUsernameLabel: UILabel!
    var username: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = false
        welcomeUsernameLabel.text = "Welcome" + " " + username 
    }
    
    deinit {
        debugPrint("\(self) deinitilized in \(#function)")
    }
}

