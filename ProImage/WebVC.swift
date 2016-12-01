    //
//  WebVC.swift
//  ProImage
//
//  Created by User on 11/12/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit


class WebVC: UIViewController, UIWebViewDelegate {
 
    
    @IBOutlet weak var webView: UIWebView!
     
    @IBOutlet weak var textField: UITextField!
 
    @IBOutlet weak var imagePicked: UIImageView!

    // Loads google images
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URLimages = NSURL(string: "https://www.google.com/imghp?hl=en&tab=wi&authuser=0&ei=QXAnWOumHsGL0gLajrXACA&ved=0EKouCBgoAQ")
        webView.loadRequest(NSURLRequest(URL: URLimages!))
    }
    
    // saves URL to image view
    @IBAction func saveText(sender: UIButton) {
        let url:NSURL? = NSURL(string: textField.text!)
        let data:NSData? = NSData(contentsOfURL : url!)
        let image = UIImage(data : data!)!
        imagePicked.image = image
    }


 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }
 
    
    
    @IBAction func Edit(sender: UIBarButtonItem) {
        
        self.performSegueWithIdentifier("e", sender: self)
    }
    
    
    // moves image to next view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let dvc = segue.destinationViewController as! ImageVC
            dvc.newImage = imagePicked.image

    }
    
}
