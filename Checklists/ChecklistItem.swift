//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Laurent Liu on 02/05/2017.
//  Copyright © 2017 Laurent Liu. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
    
    //MARK: Properties
    
    var text = ""
    var checked = false
    
    //MARK: Methods
    
    func toggleChecked() {
        checked = !checked
    }
    
    //MARK: Initialization
    
    override init() {
        super.init()
    }
    
    //MARK: NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(text, forKey: "Text")
        aCoder.encode(checked, forKey: "Checked")
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObject(forKey: "Text") as! String
        checked = aDecoder.decodeBool(forKey: "Checked")
        super.init()
    }
    

}
