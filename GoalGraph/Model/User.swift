//
//  User.swift
//  GoalGraph
//
//  Created by Jake Garcia on 9/29/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    
    @objc dynamic var fName: String = ""
    @objc dynamic var lName: String = ""
    let weightData = List<WeightInput>()
    
}
