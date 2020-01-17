//
//  ViewController.swift
//  Piano-tiles
//
//  Created by Asif Rabbi on 17/1/20.
//  Copyright © 2020 Asif Rabbi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    var soundArray = [ "a-3", "f-3", "f-4", "f-5", "f5", "g-4", "g3", "g4", "g5", "c5" ]
    var audioNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func playButtons(_ sender: UIButton) {
       audioNumber = soundArray[sender.tag - 1]
       audioPlayback()
    }
    
    
    
    func audioPlayback() {
        let soundUrl = Bundle.main.url(forResource: audioNumber, withExtension: "mp3")
        
        do{
             audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    
}

