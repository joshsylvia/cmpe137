//
//  ChooseLocationViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016  MacBook Owner. All rights reserved.
//

import UIKit

class ChooseLocationVC: UIViewController {
    
    
    @IBOutlet var imageView1: UIImageView!
    

    // transfer file from PhotoLibrary.swift
    var newImage1: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView1.image = newImage1
    }
    

    @IBAction func gallery(sender: AnyObject) {
        performSegueWithIdentifier("g", sender: self)

    }
    @IBAction func facebook(sender: AnyObject) {
        performSegueWithIdentifier("f", sender: self)
        
    }
    // moves image to next view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "g") {
            let dvc = segue.destinationViewController as! PhotoLibraryVCsave
            dvc.newImage = imageView1.image
        }
        if (segue.identifier == "f") {
            let dvc = segue.destinationViewController as! FacebookVCsave
            dvc.newImage = imageView1.image
        }
        
    }
    
}
