//
//  ViewController.swift
//  DungeonDice2
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
    func roll(sides:Int) {
        let result = Int.random(in:1...sides)
        let message = "You rolled a \(sides) sided die and got a \(result)"
        resultLabel.text = message
    }

    @IBAction func buttonPressed(_ sender: Any) {
        roll(sides: sender.Tag)
        
    }

}

