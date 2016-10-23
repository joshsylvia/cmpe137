//
//  FacebookVC.swift
//  ProImage
//
//  Created by MacBook Owner on 10/22/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit


class FacebookVC: UIViewController {


    let loginButton: FBSDKLoginButton = {
        let button = FBSDKLoginButton()
       // button.readPermissions = ["email"]
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginButton)
        loginButton.center = view.center
    
    }
}