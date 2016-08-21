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

    @IBAction func meow(sender: AnyObject) {
        print("meow")
        // Load
        let soundURL = NSBundle.mainBundle().URLForResource("meow", withExtension: "wav")
        var mySound: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundURL!, &mySound)
        
        // Play
        AudioServicesPlaySystemSound(mySound);

    }

}

