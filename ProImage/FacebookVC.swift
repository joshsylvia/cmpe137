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

 //   @IBOutlet weak var fbImage: UIImageView!
    
    var fbImage: UIImage!
/*    // Assuming you have a UIImage reference
    UIImage *fbImage = ...;
    FBSDKSharePhotoContent *content = [[FBSDKSharePhotoContent alloc] init];
    content.photos = @[[FBSDKSharePhoto photoWithImage:someImage userGenerated:YES] ];
    
    // Assuming self implements <FBSDKSharingDelegate>
    [FBSDKShareAPI shareWithContent:content delegate:self];
*/
    
    /*
    - (void)imagePickerController:(UIImagePickerController *)picker
    didFinishPickingMediaWithInfo:(NSDictionary *)info
    {
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    
    FBSDKSharePhoto *photo = [[FBSDKSharePhoto alloc] init];
    photo.image = image;
    photo.userGenerated = YES;
    FBSDKSharePhotoContent *content = [[FBSDKSharePhotoContent alloc] init];
    content.photos = @[photo];
    ...
    }
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginButton)
        loginButton.center = view.center
    
    }
}
