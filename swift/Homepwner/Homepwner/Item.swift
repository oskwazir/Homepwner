//
//  Item.swift
//  Homepwner
//
//  Created by Omer Wazir on 9/3/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//


// Should a simple class use Foundation or UIKit in an iOS app?
import UIKit

class Item{
    let itemName:String
    let valueInDollars:Int
    let serialNumber:String
    
    init(name:String,value:Int, serialNumber:String){
        self.itemName = name
        self.valueInDollars = value
        self.serialNumber = serialNumber
    }
    
    convenience init(name:String){
        self.init(name: name,value: 0,serialNumber: "")
    }
    
    convenience init(){
        self.init(name: "Item")
    }
    
    class func randomItem() -> Item{
        let randomAdjectivesList = ["Fluffy","Rusty","Shiny"]
        let randomNounList = ["Bear","Spork","Mac"]
        
        let adjectiveIndex = Int(arc4random()) % randomAdjectivesList.count
        let nounIndex = Int(arc4random()) % randomNounList.count
        
        let randomName = "\(randomAdjectivesList[adjectiveIndex]) \(randomNounList[nounIndex])"
        
        let randomValue = Int(arc4random()) % 100
        
        let randomSerialNumber = "\(arc4random() % 10)\(arc4random() % 10)\(arc4random() % 10)\(arc4random() % 10)\(arc4random() % 10)"
        
        let newItem:Item = Item(name: randomName, value: randomValue, serialNumber: randomSerialNumber)
        
        return newItem
    }
    
}
