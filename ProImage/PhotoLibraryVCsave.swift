//
//  PhotoLibraryVCsave.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016  MacBook Owner. All rights reserved.
//

import UIKit

class PhotoLibraryVCsave: UIViewController {
  
    
    @IBOutlet var imageView: UIImageView!
    
    // transfer file from ChooseLocationVC.swift
    var newImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = newImage
    }
    

    // save function for photolibrary
    @IBAction func save(_ sender: AnyObject) {
            let imageData = UIImageJPEGRepresentation(imageView.image!, 0.6)
            let compressedJPGImage = UIImage(data: imageData!)
            UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
     
    }

    // checks for errors.
    func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "Your altered image has been saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
}
