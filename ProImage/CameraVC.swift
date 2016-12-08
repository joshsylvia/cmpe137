//
//  CameraViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016  MacBook Owner. All rights reserved.
//

import UIKit

class CameraVC: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    @IBOutlet var imagePicked: UIImageView!
    
    
    @IBAction func captureImage(_ sender: AnyObject) {
    
        
    // Image picker to pick from the camera.
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
        imagePicker.allowsEditing = false
        self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    // image picker controller.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let selectedImage:UIImage = (info[UIImagePickerControllerOriginalImage]) as! UIImage
        imagePicked.image = selectedImage
        self.dismiss(animated: true, completion: nil)
    }
    
    // edit button
    @IBAction func Edit(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "e", sender: self)
    }
    
    
    // moves image to next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}
