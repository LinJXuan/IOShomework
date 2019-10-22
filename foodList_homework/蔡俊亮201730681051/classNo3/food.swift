//
//  abc_File.swift
//  classNo3
//
//  Created by clement on 2019/10/15.
//  Copyright © 2019 clement. All rights reserved.
//

import Foundation
class food :NSObject,NSCoding {
    
    var name:String?
    var adescription:String?
    
    func encode(with aCoder: NSCoder){
        aCoder.encode(name,forKey: "nameKey")
        aCoder.encode(adescription,forKey:"descrptionKey")
        
    }
    required init?(coder aDecoder: NSCoder) {
        name=aDecoder.decodeObject(forKey: "nameKey") as? String
        adescription=aDecoder.decodeObject(forKey: "descrptionKey") as? String
    }
    
    static let DCDir = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let AchiverURL=DCDir.appendingPathComponent("foodlist")
 
    init (name: String?,adescription: String?){
        self.name = name
        self.adescription = adescription
        
    }
}
