//
//  ViewController.swift
//  AgentAppSwift
//
//  Created by Taylor Frost on 6/13/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var UsernameLabel: UITextField!
    
    @IBOutlet weak var PasswordLabel: UITextField!
    
    @IBOutlet weak var AuthenticateButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    
 
    func textFieldShouldReturn(textField:UITextField) ->
        Bool {


            if textField == UsernameLabel {
                PasswordLabel.becomeFirstResponder()
            } else {
                textField.resignFirstResponder()
            }
            return true
}

    @IBAction func authTapped(sender: UIButton) {
    

    let secretAgent = "Frost"
    
    if (self.UsernameLabel.text! == "Taylor") &&
        (self.PasswordLabel.text! == "password") {
    
    self.view.backgroundColor = UIColor.greenColor()
    self.greetingLabel.text = "Good Evening, Agent \(secretAgent)"
    } else {
    
    self.view.backgroundColor = UIColor.redColor()
    }

}

}


