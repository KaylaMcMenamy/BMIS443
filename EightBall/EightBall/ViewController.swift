//
//  ViewController.swift
//  EightBall
//
//  Created by Kayla M on 9/19/18.
//  Copyright © 2018 Kayla M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var index = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        }

    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        }while lastNumber == newIndex
        return newIndex
        }
    
    @IBAction func answerButton(_ sender: UIButton) {
        let answerArray = ["Yes",
                           "No",
                           "It is decidedly so",
                           "It is certain",
                           "Without a doubt",
                           "Yes, definitely",
                           "My sources say no",
                           "Outlook not so good",
                           "Very doubtful",
                           "Maybe so"]
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: answerArray.count)
        
        resultLabel.text = answerArray[index]
    }
    
}

