//
//  PhtotoLibraryViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//



import UIKit

class PhotoLibraryViewController: UIViewController, UIImagePickerControllerDelegate,
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
    
    
    
    
    // moves image to next view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dvc = segue.destinationViewController as! ImageViewController
        dvc.newImage = imagePicked.image
        
    }
    
    
    // save function for photolibrary
     @IBAction func saveButt(sender: AnyObject) {
     let imageData = UIImageJPEGRepresentation(imagePicked.image!, 0.6)
     let compressedJPGImage = UIImage(data: imageData!)
     UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
     
     let alert = UIAlertView(title: "Wow",
     message: "Your image has been saved to Photo Library!",
     delegate: nil,
     cancelButtonTitle: "Ok")
     alert.show()
     }
  
    
    
    
}