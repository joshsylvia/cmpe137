//
//  PhtotoLibraryViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//



import UIKit

class PhotoLibraryVC: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    
    @IBOutlet var imagePicked: UIImageView!
    
    @IBAction func openPhotoLibraryButton(sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary;
            imagePicker.allowsEditing = true
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