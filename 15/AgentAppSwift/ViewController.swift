//
//  ViewController.swift
//  AgentAppSwift
//
//  Created by Taylor Frost on 6/13/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UsernameLabel: UITextField!
    
    @IBOutlet weak var PasswordLabel: UITextField!
    
    @IBOutlet weak var AuthenticateButton: UIButton!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    @IBOutlet weak var AuthenticateButtonTapped: UIButton!
    
    if UsernameLabel = "Taylor Frost" && PasswordLabel = "111111"{
    
    } self.view.backgroundColor = [UIColor greenColor];
    
    
else if (UsernameLabel != "Taylor Frost" && PasswordLabel != "111111") {
    
    self.view.backgroundColor = [UIColor redColor];
    
}






