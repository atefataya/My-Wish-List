//
//  AddWishVC.swift
//  My-Wish-List
//
//  Created by Atef H Ataya on 12/11/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import UIKit

class AddWishVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    @IBOutlet weak var urlField: UITextField!

    @IBOutlet weak var priceField: UITextField!
    
    @IBOutlet weak var shopField: UITextField!
    
    @IBOutlet weak var notesField: UITextField!
    
    @IBOutlet weak var wishImg: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        wishImg.layer.cornerRadius = wishImg.frame.size.width / 2
        wishImg.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
    }

    @IBAction func addPicButtonPressed(sender: AnyObject) {
        
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
   
    
    @IBAction func makeButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
    }

    
}
