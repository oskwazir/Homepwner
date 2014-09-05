//
//  ItemStore.swift
//  Homepwner
//
//  Created by Omer Wazir on 9/4/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

// Copied this pattern from https://github.com/davidkobilnyk/BNRGuideSolutionsInSwift
// where a nested struct pattern described here
// was used https://github.com/hpique/SwiftSingleton/blob/master/README.md
// See playground file in this project for proof that this pattern works


class ItemStore {
    
    private(set) var allItems = [Item]()
    
    class var sharedStore : ItemStore {
    struct Static {
        
            static let instance : ItemStore = ItemStore()
        
        }
        
        return Static.instance
    }
    
    // It's impossible to instantiate this class outside of this file
    private init() {}
    
    
    func createItem() -> Item {
        let item = Item.randomItem()
        allItems += [item]
        return item
    }
}