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
 
    
    @IBOutlet weak var imageTransfer: ImageV!
    
 
    // Loads google images
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URLimages = URL(string: "https://www.google.com/imghp?hl=en&tab=wi&authuser=0&ei=QXAnWOumHsGL0gLajrXACA&ved=0EKouCBgoAQ")
        webView.loadRequest(URLRequest(url: URLimages!))
    }
    
    // saves URL to image view
    @IBAction func saveText(_ sender: UIButton) {
        let t: String = textField.text!
        if t.contains("Please") {
            
        } else {
            let url:URL? = URL(string: textField.text!)
            let data:Data? = try? Data(contentsOf: url!)
            let image = UIImage(data : data!)!
            let imageData = UIImageJPEGRepresentation(image, 0.6)
            let compressedJPGImage = UIImage(data: imageData!)
            UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
            
        }
    }


 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }
 
    
    
    @IBAction func Edit(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "e", sender: self)
    }
    
    
    // moves image to next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 

            //let dvc = segue.destination as! ViewController
            //dvc.newImage = imagePicked.image
        
    }
    
}
