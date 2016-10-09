//
//  ChooseLocationViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016  MacBook Owner. All rights reserved.
//

import UIKit

class ChooseLocationVC: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    

    // transfer file from PhotoLibrary.swift
    var newImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = newImage
    }
    
    
    @IBAction func gallery(sender: AnyObject) {
        performSegueWithIdentifier("g", sender: self)
    }

    
    
    
    
    // moves image to next view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "g") {
            let dvc = segue.destinationViewController as! PhotoLibraryVCsave
            dvc.newImage = imageView.image
        }
        
        
    }
    
}
