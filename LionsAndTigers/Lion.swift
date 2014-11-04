//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Martin Brunner on 04.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import Foundation
import UIKit


class Lion {
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
 
    
    func roar() {
        println("Lion: Roar...Roar")
    }
    
    func changeToAlphaMale() {
        self.isAlphaMale = true
    }
    
    func randomFact() -> String {
        var randomFact: String
        if self.isAlphaMale {
            randomFact = "Male lions are easy to recon..."
        
        }
        else {
            randomFact = "Female Lionesses ...."
        }
        return randomFact
    }
}