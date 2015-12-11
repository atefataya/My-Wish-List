//
//  Wish.swift
//  My-Wish-List
//
//  Created by Atef H Ataya on 12/11/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    private var _imagePath: String!
    private var _title: String!
    private var _wishDesc: String!
    private var _wishURL: String!
    private var _wishPrice: String!
    private var _wishShop: String!
    private var _wishNotes: String!
    
    
    var imagePath: String {
        get {
            return _imagePath
        }
    }
    
    var title: String {
        get{
            return _title
        }
    }
    
    var wishDesc: String {
        get {
            return _wishDesc
        }
    }
    
    var wishURL: String {
        get {
            return _wishURL
        }
    }
    
    var wishPrice: String {
        get {
            return _wishPrice
        }
    }
    
    var wishShop: String {
        get {
            return _wishShop
        }
    }
    
    var wishNotes: String {
        get {
            return _wishNotes
        }
    }
    
    
    init(imagePath: String, title: String, wishDesc: String, wishURL: String, wishPrice: String, wishShop: String, wishNotes: String) {
        self._imagePath = imagePath
        self._title = title
        self._wishDesc = wishDesc
        self._wishURL = wishURL
        self._wishPrice = wishPrice
        self._wishShop = wishShop
        self._wishNotes = wishNotes
        }
    
    override init() {
        
    }
    
    required convenience init? (coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._wishDesc = aDecoder.decodeObjectForKey("wishDesc") as? String
        self._wishURL = aDecoder.decodeObjectForKey("wishURL") as? String
        self._wishPrice = aDecoder.decodeObjectForKey("wishPrice") as? String
        self._wishShop = aDecoder.decodeObjectForKey("wishShop") as? String
        self._wishNotes = aDecoder.decodeObjectForKey("wishNotes") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._wishDesc, forKey: "wishDesc")
        aCoder.encodeObject(self._wishURL, forKey: "wishURL")
        aCoder.encodeObject(self._wishPrice, forKey: "wishPrice")
        aCoder.encodeObject(self._wishShop, forKey: "wishShop")
        aCoder.encodeObject(self._wishNotes, forKey: "wishNotes")

    }
}
