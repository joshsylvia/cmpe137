//
//  ImageViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    // NOTE: any changes to view needs to call this function.
    func updateUI() {
        imageView.setNeedsDisplay()
    }

    
    @IBOutlet var imageView: UIImageView!
    
    
    
    
    
    // transfer file from PhotoLibrary.swift
    var newImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = newImage
    }
    
}
