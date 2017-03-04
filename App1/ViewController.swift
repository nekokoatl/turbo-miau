//  ViewController.swift
//  App1
//  Created by Nekokoatl on 12/09/15.


import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func meow(_ sender: AnyObject) {
        print("meow")
        // Load
        let soundURL = Bundle.main.url(forResource: "meow", withExtension: "wav")
        var mySound: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundURL! as CFURL, &mySound)
        
        // Play
        AudioServicesPlaySystemSound(mySound);

    }

}

