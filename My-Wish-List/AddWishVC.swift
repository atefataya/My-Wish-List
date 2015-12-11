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
        
        if let title = titleField.text , let desc = descriptionField.text , let url = urlField.text , let price = priceField.text , let shop = shopField.text , let notes = notesField.text, let img = wishImg.image {
            let imgPath = DataService.instance.saveImageAndCreatePath(img)
            let wish = Wish (imagePath: imgPath, title: title, wishDesc: desc, wishURL: url, wishPrice: price, wishShop: shop, wishNotes: notes)
            DataService.instance.addWish(wish)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        wishImg.image = image
    }

    
}
