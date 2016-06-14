//
//  ViewController.swift
//  OutaTimeSwift
//
//  Created by Taylor Frost on 6/14/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!

    var timer : NSTimer?
    
    var speed = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.counterLabel.text = "0"
    }

    @IBAction func takeOffButtonTapped(sender: UIButton) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector (ViewController.incrementCounter), userInfo: nil, repeats: true)
        timer?.fire()
    }
    
    func incrementCounter(){
        speed = speed + 1
        if speed >= 88 {
            timer?.invalidate()
        }
        counterLabel.text = "\(speed)"
        
    }

}

