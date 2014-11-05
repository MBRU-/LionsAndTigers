//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Martin Brunner on 04.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import Foundation

class LionCub: Lion {
    
    func rubLionsCubsBelly () {
        println("LionsCub: Freu dich und sei zufrieden!" + super.name)
        
    }
    
    override func roar() {
        super.roar()
        println("LionCub: Growl ... Growl")
    }
    
}