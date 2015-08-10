//
//  ViewController.swift
//  Tromboned
//
//  Created by Andrew Brandt on 8/7/15.
//  Copyright (c) 2015 com.doryStudios. All rights reserved.
//

import UIKit
import AVFoundation
import Mixpanel

class ViewController: UIViewController {

    @IBOutlet weak var playSoundButton: UIButton!
    var player = FailPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let path = NSBundle.mainBundle().pathForResource("the-price-is-right-losing-horn", ofType: "mp3")
        //player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path!), error: nil)
        //player.prepareToPlay()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSound(sender: AnyObject) {
        player.play()
        Mixpanel.sharedInstance().track("Button pressed!")
    }

}

