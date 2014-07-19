//
//  ViewController.swift
//  Calculator
//
//  Created by Joey Mustaklem on 7/19/14.
//  Copyright (c) 2014 Joey Mustaklem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var answerField: UILabel;
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(theButton: UIButton) {
        if answerField.text == "0" {
            answerField.text = theButton.titleLabel.text;
        } else {
            answerField.text = answerField.text + theButton.titleLabel.text;
        }
    }
    
    @IBAction func plusTapped(theButton: UIButton) {
        
    }
    
    @IBAction func subtractTapped(theButton: UIButton) {
        
    }
    
    @IBAction func clearTapped(theButton: UIButton) {
        answerField.text = "0";
    }
}

