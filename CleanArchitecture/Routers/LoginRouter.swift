//
//  LoginRouter.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.
//

import UIKit

protocol LoginRouterInput {
    func showHome()
    func passDataToNextScene(segue: UIStoryboardSegue)
}

final class LoginRouter: LoginRouterInput {
    weak var viewController: LoginViewController!

    func showHome() {
        viewController.performSegue(withIdentifier: "home", sender: nil)
    }
    // MARK: - Navigation
    func passDataToNextScene(segue: UIStoryboardSegue) {
        if segue.identifier == "home" {
            // not passing any data for the moment
        }
    }
}
