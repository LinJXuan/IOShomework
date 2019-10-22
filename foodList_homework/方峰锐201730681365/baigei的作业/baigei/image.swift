//
//  food.swift
//  baigei
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class image: NSObject, NSCoding {
    var name: String?
    var adescription: String?
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "namekey")
        aCoder.encode(adescription, forKey: "adescription")
    }
    required init?(coder aDecoder: NSCoder) {
        name=aDecoder.decodeObject(forKey: "namekey") as?String
        adescription=aDecoder.decodeObject(forKey: "adescription") as?String
    }
    static let DocumentsDirector = FileManager().urls(for:.documentDirectory, in: .userDomainMask).first!
    
    static let ArchiveURL=DocumentsDirector.appendingPathComponent("foodList")
    
    init(name: String?,adescription: String?){
        self.name = name
        self.adescription = adescription
    }
}




