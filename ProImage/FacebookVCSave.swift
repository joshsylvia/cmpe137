//
//  FacebookVCSave.swift
//  ProImage
//
//  Created by User on 11/30/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit

class FacebookVCsave: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    
    // transfer file from ChooseLocationVC.swift
    var newImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = newImage
    }
    
    // save function for photolibrary
    @IBAction func save(sender: AnyObject) {
        let imageData = UIImageJPEGRepresentation(imageView.image!, 0.6)
        let compressedJPGImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
        
    }
    
}
