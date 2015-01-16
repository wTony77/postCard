//
//  ViewController.swift
//  PostCard
//
//  Created by MacBox on 15/1/15.
//  Copyright (c) 2015 AppBox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButton(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        // Set the "textColor" property for messageLabel
        messageLabel.textColor = UIColor.redColor() // UIColor is a class function and create an instant of redColor
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() // Function to hide keyboard () = function
        
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        // setTitle func with parameters/information() that needs to be pass in
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
}

