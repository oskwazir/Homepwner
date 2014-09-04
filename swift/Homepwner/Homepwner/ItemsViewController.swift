//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Omer Wazir on 9/3/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    // I don't know why but by not overriding any initializer the UITableViewStyle.Plain style
    // draws to the view by default
    // I had done this whole thing of overriding initializers and would get an exception when running the app
    // By having this blank class it works. So obviously I'm missing something about Swift and UITableViewController
}
