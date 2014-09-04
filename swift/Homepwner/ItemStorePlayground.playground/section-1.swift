// Playground - noun: a place where people can play

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


class ItemStore {
    
    private(set) var allItems = [Item]()
    
    class var sharedInstance : ItemStore {
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

var foo:ItemStore = ItemStore.sharedInstance
foo.createItem()
foo.createItem()
foo.createItem()
foo.allItems.count

var bar:ItemStore = ItemStore.sharedInstance
bar.createItem()
bar.allItems.count