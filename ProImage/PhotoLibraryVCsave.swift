//
//  PhotoLibraryVCsave.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit

class PhotoLibraryVCsave: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate  {
  
    
    @IBOutlet var imageView1: UIImageView!
    
    // transfer file from ChooseLocationVC.swift
    var newImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView1.image = newImage
    }
    
    // save function for photolibrary
    @IBAction func save(sender: AnyObject) {
            let imageData = UIImageJPEGRepresentation(imageView1.image!, 0.6)
            let compressedJPGImage = UIImage(data: imageData!)
            UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
    
    }
}