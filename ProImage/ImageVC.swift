//
//  ImageVC.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit

class ImageVC: UIViewController, UIScrollViewDelegate {
    
    // NOTE: any changes to view needs to call this fun ction.
    func updateUI() {
        imageView.setNeedsDisplay()
    }

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var imageView: ImageV!  {   didSet {  }
    }

    
    // transfer file from PhotoLibrary.swift
    var newImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = newImage
    
        
    // set Scalling on zoom
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 6.0
    }
    
    // Zooming view
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    @IBAction func saveTo(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "s", sender: self)
    }
    
    // moves image to next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "s") {
            let dvc = segue.destination as! ChooseLocationVC
            dvc.newImage1 = imageView.image
        }
    }
}
