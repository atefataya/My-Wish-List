//
//  ViewController.swift
//  My-Wish-List
//
//  Created by Atef H Ataya on 12/11/15.
//  Copyright © 2015 Atef H Ataya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        DataService.instance.loadWishes()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "onWishesLoad", name: "wishesLoaded", object: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let wish = DataService.instance.loadedWishes[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("WishCell") as? WishCell {
            cell.configureCell(wish)
            return cell
        } else {
            let cell = WishCell()
            cell.configureCell(wish)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 94.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.loadedWishes.count
    }
    
    func onWishesLoad (notif: AnyObject) {
        tableView.reloadData()
    }
  


}

