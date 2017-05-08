//
//  Checklist.swift
//  Checklists
//
//  Created by Laurent Liu on 03/05/2017.
//  Copyright © 2017 Laurent Liu. All rights reserved.
//

import UIKit

class Checklist: NSObject, NSCoding {
    
    //MARK: Properties
    
    var name = ""
    var items = [ChecklistItem]()
    
    //MARK: Initialization
    
    init(name: String) {
        
        self.name = name
        super.init()
    }
    
    //MARK: NSCoding
    
    required init?(coder aDecoder: NSCoder) {
        
        name = aDecoder.decodeObject(forKey: "Name") as! String
        items = aDecoder.decodeObject(forKey: "Items") as! [ChecklistItem]
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(name, forKey: "Name")
        aCoder.encode(items, forKey: "Items")
    }
    
    //MARK: Methods
    
    func countUncheckedItems() -> Int {
        
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }
}

















