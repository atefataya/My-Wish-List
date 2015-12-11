//
//  DataService.swift
//  My-Wish-List
//
//  Created by Atef H Ataya on 12/11/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import Foundation
import UIKit


class DataService {
    static let instance = DataService()
    
    let KEY_WISHES = "wishes"
    private var _loadedWishes = [Wish]()
    
    var loadedWishes: [Wish] {
        return _loadedWishes
    }
    
    func saveWishes(){
        
        let wishesData = NSKeyedArchiver.archivedDataWithRootObject(_loadedWishes)
        NSUserDefaults.standardUserDefaults().setObject(wishesData, forKey: KEY_WISHES)
        NSUserDefaults.standardUserDefaults().synchronize()
        
    }
    func loadWishes(){
        
        if let wishesData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_WISHES) as? NSData {
            if let wishesArray = NSKeyedUnarchiver.unarchiveObjectWithData(wishesData) as? [Wish] {
                _loadedWishes = wishesArray
            }
        }
        
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "wishesLoaded", object: nil))
        
    }
    func saveImageAndCreatePath (image: UIImage) -> String {
        
        let imgData = UIImagePNGRepresentation(image)
        let imgPath = "image\(NSDate.timeIntervalSinceReferenceDate()).png"
        let fullPath = documentsPathForFileName(imgPath)
        imgData?.writeToFile(fullPath, atomically: true)
        return imgPath
        
    }
    
    func imageForPath(path: String) -> UIImage? {
        
        let fullPath = documentsPathForFileName(path)
        let image = UIImage(named: fullPath)
        return image
        
    }
    
    func addWish(wish: Wish) {
        
        _loadedWishes.append(wish)
        saveWishes()
        loadWishes()
    }
    
    func documentsPathForFileName(name: String) -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentationDirectory, .UserDomainMask, true)
        let fullPath = paths[0] as NSString
        return fullPath.stringByAppendingPathComponent(name)
    }
}


