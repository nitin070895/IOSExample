//
//  ImagePickerExampleViewController.swift
//  AppShockerExample
//
//  Created by Nitin Khurana on 21/02/18.
//  Copyright © 2018 Nitin Khurana. All rights reserved.
//

import UIKit

class ImagePickerExampleViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imageView:UIImageView = UIImageView(frame : CGRect(origin : CGPoint(x:50, y:130), size : CGSize(width:200, height:200)))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openPhotoLibrary(_ sender: Any) {
        
        let photoPicker = UIImagePickerController()
        photoPicker.delegate = self
        photoPicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        self.present(photoPicker, animated:true, completion:nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    

}
