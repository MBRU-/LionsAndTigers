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
    @IBOutlet weak var randomFactLabel: UILabel!

//    var allTigers = [Tiger]()
    var allTigers:  [Tiger] = []
    var lions: [Lion] = []
    var currentIndex = 0
    var currentAnimal = (species: "Tiger", index: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "lion.jpg")
        lion.name = "Mustaffa"
        lion.subspecies = "Niederländer Löwe"
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Susanne"
        lioness.subspecies = "Barbary"
        
        lion.roar()
        lioness.roar()
        lion.changeToAlphaMale()
        println(lion.isAlphaMale)
        
        self.lions += [lion, lioness]
        
        var lionCub = LionCub()
        lionCub.age = 1
        lionCub.name = "Simba"
        lionCub.image = UIImage(named: "Lioncub1.jpg")
        lionCub.subspecies = "Masai"
        lionCub.roar()
        
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
        self.randomFactLabel.text = theTiger.randomFact()

        theTiger.name = "Federico"
        theTiger.breed = "Spanien"
        theTiger.age = 15
        theTiger.image = UIImage(named: "IndochineseTiger.jpg")
        allTigers.append(theTiger)
        
        theTiger.name = "Susi"
        theTiger.breed = "Florida"
        theTiger.age = 1
        theTiger.image = UIImage(named: "MalayanTiger.jpg")
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
        updateAnimal()
        updateView()

    }
    
    func updateAnimal() {
        switch currentAnimal {
        case ("Tiger", _) :
            let randomIndex = Int(arc4random_uniform(UInt32(lions.count)))
            currentAnimal = ("Lion", randomIndex)
        default :
            let randomIndex = Int(arc4random_uniform(UInt32(allTigers.count)))
            currentAnimal = ("Tiger", randomIndex)
            
        }
    }
    
    func updateView() {
    
        UIView.transitionWithView(self.view , duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
<<<<<<< HEAD
            if self.currentAnimal.species == "Tiger" {
                let tiger = self.allTigers[self.currentAnimal.index]
                self.myImageView.image = tiger.image
                self.breedLabel.text = tiger.breed
                self.ageLabel.text = "\(tiger.age)"
                self.nameLabel.text = tiger.name

            }
            else if self.currentAnimal.species == "Lion" {
                let lion = self.lions[self.currentAnimal.index]
                self.myImageView.image = lion.image
                self.breedLabel.text = lion.subspecies
                self.ageLabel.text = "\(lion.age)"
                self.nameLabel.text = lion.name
            }
            
            
=======
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = String(tiger.age)
            self.breedLabel.text = tiger.breed
            self.randomFactLabel.text = tiger.randomFact()
>>>>>>> FETCH_HEAD
            }, completion: {(finished: Bool) -> () in})
    }
    
        
        
    }



