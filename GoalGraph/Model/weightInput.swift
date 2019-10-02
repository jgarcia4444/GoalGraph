//
//  WeightInput.swift
//  GoalGraph
//
//  Created by Jake Garcia on 9/29/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import Foundation
import RealmSwift

class WeightInput: Object {
    
    @objc dynamic var weight: Int = 0
    @objc dynamic var datePosted = Date()
    
}
