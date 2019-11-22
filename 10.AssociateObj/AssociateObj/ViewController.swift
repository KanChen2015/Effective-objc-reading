//
//  ViewController.swift
//  AssociateObj
//
//  Created by Kan Chen on 11/22/19.
//  Copyright © 2019 Kan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let people1 = People(name: "One", height: 123, weight: 123)
        let people2 = People(name: "Two", height: 222, weight: 222)

        print(people1.attach)
        print(people2.attach)
        // print nil, nil
        people1.attach = "Test 1"
        print(people1.attach)
        print(people2.attach)
        // print "test 1" , nil
        people2.attach = "Test 2"
        print(people1.attach)
        print(people2.attach)
        // print "test1", "test2"
    }


}

