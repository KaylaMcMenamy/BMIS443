//
//  ViewController.swift
//  WhatForDinner
//
//  Created by Kayla M on 9/21/18.
//  Copyright © 2018 Kayla M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dinnerImage: UIImageView!
    @IBOutlet weak var dinnerLabel: UILabel!
    var lastMeal = -1 //Need to keep track of last meal
    
    var choicesArray = ["Burrito",
                       "Cobb Salad",
                       "Pepperoni Pizza",
                       "Sushi"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func dinnerButtonPressed(_ sender: UIButton) {
        var selectedMeal = Int.random(in:0...choicesArray.count-1)

        
        while selectedMeal == lastMeal {
            var selectedMeal = Int.random(in:0...choicesArray.count-1)
            
            //choicesArray.randomElement()!
        }
        
        dinnerImage.image = UIImage(named: choicesArray[selectedMeal])
        dinnerLabel.text = choicesArray[selectedMeal]
        lastMeal = selectedMeal

    }
}

