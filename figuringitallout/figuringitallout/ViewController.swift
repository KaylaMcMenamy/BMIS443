//
//  ViewController.swift
//  figuringitallout
//
//  Created by Kayla M on 9/14/18.
//  Copyright © 2018 Kayla M. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var musicEffect: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let musicFile = Bundle.main.path(forResource: "NEGU", ofType: ".mp3")
        
        do {
            
            try musicEffect = AVAudioPlayer(contentsOf: URL(fileURLWithPath:musicFile!))
        }
            
        catch {
            print(error)
        }
    }

    @IBAction func playMusic(_ sender: Any) {
        musicEffect.play()
    }
    
    @IBAction func pauseMusic(_ sender: Any) {
        musicEffect.stop()
    }
    
}

