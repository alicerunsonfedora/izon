//
//  ViewController.swift
//  Izon
//
//  Created by Marquis Kurt on 7/20/15.
//  Copyright © 2015 Open Nova. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var sppechText: UITextView!
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    //Initialize the Text to Speech Engine
    
    @IBAction func speakText(sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: sppechText.text)
        myUtterance.rate = 0.5
        synth.speakUtterance(myUtterance)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

