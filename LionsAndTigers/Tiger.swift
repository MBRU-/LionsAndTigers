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
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the biggest species in the cat family"
        }
        else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3 meters"
        }
        else {
            randomFact = "A group of tigers is known as an 'ambush' or 'streak'"
        }
        return randomFact
    }
}