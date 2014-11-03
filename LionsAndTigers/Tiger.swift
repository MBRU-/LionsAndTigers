//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Martin Brunner on 02.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
 
    func chuff() {
        println("chuff - chuff")
    }
    
    func chuffNrOfTimes( nrOfTimes: Int) {
        for var chuff = 0; chuff < nrOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func ageInTigerYearsFromAge(regularAge: Int) -> Int {
        return regularAge * 3
    }
}