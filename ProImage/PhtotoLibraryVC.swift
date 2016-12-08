//
//  PhtotoLibraryViewController.swift
//  ProImage
//
//  Created by MacBook Owner on 10/1/16.
//  Copyright © 2016  MacBook Owner. All rights reserved.
//



import UIKit

class PhotoLibraryVC: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    
    @IBOutlet var imagePicked: UIImageView!
    
    // Opens the Photo Library
    @IBAction func openPhotoLibraryButton(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    // saves the image picked to view controller
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let selectedImage:UIImage = (info[UIImagePickerControllerOriginalImage]) as! UIImage
        imagePicked.image = selectedImage
        self.dismiss(animated: true, completion: nil)
    }

    // identifies segue
    @IBAction func Edit(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "e", sender: self)
    }
    
    // moves image to next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

}
