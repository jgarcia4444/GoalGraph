//
//  User.swift
//  GoalGraph
//
//  Created by Jake Garcia on 9/29/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import Foundation
import RealmSwift
// Use Realm to have an auto updating user.
class User: Object {
    
    @objc dynamic var fName: String = ""
    @objc dynamic var lName: String = ""
    @objc dynamic var gender: String = ""
    
    @objc dynamic var height: Int = 0
    @objc dynamic var weight: Int = 0
    
    let weightData = List<WeightInput>()
    
}
