//
//  TodayViewController.swift
//  Quick Fail
//
//  Created by Andrew Brandt on 8/7/15.
//  Copyright (c) 2015 com.doryStudios. All rights reserved.
//

import UIKit
import NotificationCenter
import AVFoundation

class TodayViewController: UIViewController, NCWidgetProviding {
    
    var player: FailPlayer = FailPlayer()
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func playSound(sender: AnyObject) {
     //   if let player = player {
            player.play()
            println("play button pressed!")
       // }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize = CGSizeMake(320.0, 120.0)
        self.preferredContentSize.height = 120.0
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.
        playButton.hidden = false
        completionHandler(NCUpdateResult.NewData)
    }
    
    func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
}
