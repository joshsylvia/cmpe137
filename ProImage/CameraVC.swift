//
//  CameraViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

import UIKit

class CameraVC: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    @IBOutlet var imagePicked: UIImageView!
    
    
    @IBAction func captureImage(sender: AnyObject) {
    
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera;
        imagePicker.allowsEditing = false
        self.presentViewController(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        let selectedImage:UIImage = (info[UIImagePickerControllerOriginalImage]) as! UIImage
        imagePicked.image = selectedImage
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func Edit(sender: UIBarButtonItem) {
        
        self.performSegueWithIdentifier("e", sender: self)
    }
    
    
    // moves image to next view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "e") {
        let dvc = segue.destinationViewController as! ImageVC
        dvc.newImage = imagePicked.image
        }
    }
}
