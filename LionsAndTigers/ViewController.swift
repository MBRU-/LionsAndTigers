//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Martin Brunner on 02.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!

//    var allTigers = [Tiger]()
    var allTigers:  [Tiger] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var theTiger = Tiger()
        theTiger.chuff()
        
        theTiger.name = "Tigerli"
        theTiger.breed = "Bengalen"
        theTiger.age = 3
        theTiger.image = UIImage(named: "BengalTiger.jpg")
        allTigers.append(theTiger)
        myImageView.image = theTiger.image
        nameLabel.text = theTiger.name
        ageLabel.text = String(theTiger.age)
        breedLabel.text = theTiger.breed
        

        theTiger.name = "Federico"
        theTiger.breed = "Spanien"
        theTiger.age = 15
        theTiger.image = UIImage(named: "IndochineseTiger.jpg")
        allTigers.append(theTiger)
        
        theTiger.name = "Susi"
        theTiger.breed = "Florida"
        theTiger.age = 1
        theTiger.image = UIImage(named: "Lion.jpg")
        allTigers.append(theTiger)
        
        theTiger.name = "Carlo"
        theTiger.breed = "Italia"
        theTiger.age = 1
        theTiger.image = UIImage(named: "SiberianTiger.jpg")
        allTigers.append(theTiger)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        var randomIndex:Int
        
        do{
            randomIndex = Int(arc4random_uniform(UInt32(allTigers.count)))
        } while currentIndex == randomIndex
            currentIndex = randomIndex
        
        var  tiger = allTigers[randomIndex]
        tiger.age = tiger.ageInTigerYearsFromAge(tiger.age)
        tiger.chuffNrOfTimes(randomIndex)
        
//        myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = String(tiger.age)
//        breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view , duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = String(tiger.age)
            self.breedLabel.text = tiger.breed
            }, completion: {(finished: Bool) -> () in})
    }

}

