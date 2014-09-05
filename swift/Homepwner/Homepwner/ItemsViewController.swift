//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Omer Wazir on 9/3/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    
    override init(){
        super.init(style: UITableViewStyle.Plain)
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override convenience init(style: UITableViewStyle) {
        self.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
}

