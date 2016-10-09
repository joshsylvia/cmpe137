//
//  ImageVC.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit

class ImageVC: UIViewController {
    
    // NOTE: any changes to view needs to call this fun ction.
    func updateUI() {
        imageView.setNeedsDisplay()
    }

    
    @IBOutlet var imageView: ImageV!  {   didSet {
 //       imageView.dataSource = self
 //       imageView.addGestureRecognizer(UIPinchGestureRecognizer(target: imageView, action: Selector("scale:")))
        }
    }

    
    
    
    // transfer file from PhotoLibrary.swift
    var newImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = newImage
    }
    
    @IBAction func saveTo(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("s", sender: self)
    }
    
    // moves image to next view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "s") {
            let dvc = segue.destinationViewController as! ChooseLocationVC
            dvc.newImage = imageView.image
        }
    }
}
