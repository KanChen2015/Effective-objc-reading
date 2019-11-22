//
//  People.swift
//  AssociateObj
//
//  Created by Kan Chen on 11/22/19.
//  Copyright © 2019 Kan Chen. All rights reserved.
//

import UIKit

private var associatedKey = "key"

class People: NSObject {
    let name: String
    let height: Double
    let weight: Double

    init(name: String, height: Double, weight: Double) {
        self.name = name
        self.height = height
        self.weight = weight
    }
}

extension People {
    var attach: String? {
        get {
            return objc_getAssociatedObject(self, &associatedKey) as? String
        }
        set {
            objc_setAssociatedObject(self, &associatedKey, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
    }
}
