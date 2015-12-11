//
//  AddWishVC.swift
//  My-Wish-List
//
//  Created by Atef H Ataya on 12/11/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import UIKit

class AddWishVC: UIViewController {
    
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
    }

    @IBAction func addPicButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func makeButtonPressed(sender: AnyObject) {
    }

    
}
