//
//  ViewController.swift
//  OutaTimeSwift
//
//  Created by Taylor Frost on 6/14/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputDateTextField: UITextField!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    let formattedDate = NSDateFormatter()
    let today = NSDate()
    var timer : NSTimer?
    var speed = 0
    
override func viewDidLoad() {
        super.viewDidLoad()
        
    self.counterLabel.text = "0"
    
    self.formattedDate.dateFormat = "MMM d, yyyy"
    
    let today:NSDate = NSDate()
    print(today)
    
    self.presentTimeLabel.text = formattedDate.stringFromDate(today)
    
    }
    
@IBAction func takeOffButtonTapped(sender: UIButton) {
    
        self.lastTimeDepartedLabel.text = self.presentTimeLabel.text
        self.speed = 0
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: #selector (ViewController.incrementCounter), userInfo: nil, repeats: true)
        timer?.fire()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        enteredDate()
        self.inputDateTextField.resignFirstResponder()
        return true
        
    }
    
    func incrementCounter(){
        speed = speed + 1
        if speed >= 88 {
            timer?.invalidate()
            
        self.performSegueWithIdentifier("futureSegue", sender: self)
            
        }
        self.counterLabel.text = "\(speed)"
        
    }
    
    func enteredDate() {
    self.formattedDate.dateFormat = "MMddyy"
    if let dateEntered = self.inputDateTextField.text {
        
        if let theDate = self.formattedDate.dateFromString(dateEntered) {
            
            self.formattedDate.dateFormat = "MMM d, yyyy"
            self.inputDateTextField.text = self.formattedDate.stringFromDate(theDate)
            }
        }
    }
    
    @IBAction func unwindSegue (segue: UIStoryboardSegue){
    reset()
    }
    
    func reset() {
        
        self.lastTimeDepartedLabel.text = "--- -- ---"
        self.presentTimeLabel.text = ""
        speed = 0
        self.counterLabel.text = "0 MPH"
    }

}

