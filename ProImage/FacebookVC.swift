//
//  FacebookVC.swift
//  ProImage
//
//  Created by MacBook Owner on 10/22/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit
import FBSDKShareKit
import FBSDKCoreKit
import FBSDKLoginKit

class FacebookVC: UIViewController {

    // creates login.
    let loginButton: FBSDKLoginButton = {
        let button = FBSDKLoginButton()
       // button.readPermissions = ["email"]
        return button
    }()

   

    var fbImage: UIImage!
    
    /*
     //Not sure why this isn't working
     // For more complex open graph stories, use `FBSDKShareAPI`
    // with `FBSDKShareOpenGraphContent`
    /* make the API call */
    FBSDKGraphRequest *request = [[FBSDKGraphRequest alloc]
    initWithGraphPath:@"/{album-id}"
    parameters:params
    HTTPMethod:@"GET"];
    [request startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection,
    id result,
    NSError *error) {
    // Handle the result
    }];
    */
    
    
    // Login button onload.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginButton)
        loginButton.center = view.center
    

    }
}
