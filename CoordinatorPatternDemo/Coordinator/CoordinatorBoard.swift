//
//  CoordinatorBoard.swift
//  CoordinatorPatternDemo
//
//  Created by Ganesh Balasaheb Waghmode on 10/08/24.
//

import UIKit

protocol CoordinatorBoard: UIViewController {
    static func instantiateFromStoryboard() -> Self
}

extension CoordinatorBoard {
    static func instantiateFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let id = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
