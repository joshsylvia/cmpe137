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
        
        let URLimages = URL(string: "https://www.google.com/imghp?hl=en&tab=wi&authuser=0&ei=QXAnWOumHsGL0gLajrXACA&ved=0EKouCBgoAQ")
        webView.loadRequest(URLRequest(url: URLimages!))
    }
    
    // saves URL to image view
    @IBAction func saveText(_ sender: UIButton) {
        let url:URL? = URL(string: textField.text!)
        let data:Data? = try? Data(contentsOf: url!)
        let image = UIImage(data : data!)!
        imagePicked.image = image
    }


 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }
 
    
    
    @IBAction func Edit(_ sender: UIBarButtonItem) {
        let url:URL? = URL(string: textField.text!)
        let data:Data? = try? Data(contentsOf: url!)
        let image = UIImage(data : data!)!
        imagePicked.image = image
        self.performSegue(withIdentifier: "e", sender: self)
    }
    
    
    // moves image to next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
            let dvc = segue.destination as! ImageVC
            dvc.newImage = imagePicked.image
        
    }
    
}
