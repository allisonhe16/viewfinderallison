//
//  AddPhotoViewController.swift
//  viewfinderallison
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loadingthe view.
    }
    
    @IBAction func cameraButton(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated : true, completion : nil)
    }
    
    @IBAction func photoLibrary(_ sender: UIButton) {
       
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated : true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = selectedImage
    }
        
    imagePicker.dismiss(animated: true, completion: nil)
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
}
