//
//  WishCell.swift
//  My-Wish-List
//
//  Created by Atef H Ataya on 12/11/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import UIKit

class WishCell: UITableViewCell {
    
    @IBOutlet weak  var wishImg: UIImageView!
    @IBOutlet weak  var titleLbl: UILabel!
    @IBOutlet weak  var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        wishImg.layer.cornerRadius = wishImg.frame.size.width / 2
        wishImg.clipsToBounds = true
    }
    
    func configureCell (wish: Wish) {
        titleLbl.text = wish.title
        descLbl.text = wish.wishDesc
        //wishImg.image = DataService.instance.imageForPath(wish.imagePath)
    }
 

}
