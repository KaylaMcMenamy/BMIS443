//
//  ViewController.swift
//  DungeonDice
//
//  Created by Kayla M on 9/17/18.
//  Copyright © 2018 Kayla M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func fourSided(_ sender: UIButton) {
        let sides = 4
        let randomNumber = Int.random(in:1...sides)
        let message = "You rolled a \(sides) sided die and got a \(randomNumber)"
        resultLabel.text = message
    }
   
    @IBAction func sixSided(_ sender: UIButton) {
        let sides = 6
        let randomNumber = Int.random(in:1...sides)
        let message = "You rolled a \(sides) sided die and got a \(randomNumber)"
        resultLabel.text = message
    }
    
    @IBAction func eightSided(_ sender: UIButton) {
        let sides = 8
        let randomNumber = Int.random(in:1...sides)
        let message = "You rolled a\(sides) sided die and got a \(randomNumber)"
        resultLabel.text = message
    }
    @IBAction func tenSided(_ sender: UIButton) {
        let sides = 10
        let randomNumber = Int.random(in:1...sides)
        let message = "You rolled a \(sides) sided die and got a \(randomNumber)"
        resultLabel.text = message
    }
    
    @IBAction func twelveSided(_ sender: UIButton) {
        let sides = 12
        let randomNumber = Int.random(in:1...sides)
        let message = "You rolled a \(sides) sided die and got a \(randomNumber)"
        resultLabel.text = message
    }
    
    @IBAction func twentySided(_ sender: UIButton) {
        let sides = 20
        let randomNumber = Int.random(in:1...sides)
        let message = "You rolled a \(sides) sided die and got a \(randomNumber)"
        resultLabel.text = message
    }
    
    @IBAction func hundredSided(_ sender: UIButton) {
        let sides = 100
        let randomNumber = Int.random(in:1...sides)
        let message = "You rolled a \(sides) sided die and got a \(randomNumber)"
        resultLabel.text = message
    }
}

