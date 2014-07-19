//
//  ViewController.swift
//  Calculator
//
//  Created by Joey Mustaklem on 7/19/14.
//  Copyright (c) 2014 Joey Mustaklem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lastNumber = "";
    @IBOutlet var answerField: UILabel;
    @IBOutlet var operationField: UILabel;
                            
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
        if(operationField.text == "") {
            lastNumber = answerField.text;
            operationField.text = "+";
            answerField.text = "0";
        } else {
            operationField.text = "+";
        }
    }
    
    @IBAction func subtractTapped(theButton: UIButton) {
        if(operationField.text == "") {
            lastNumber = answerField.text;
            operationField.text = "-";
            answerField.text = "0";
        } else {
            operationField.text = "-";
        }
    }
    
    @IBAction func clearTapped(AnyObject) {
        answerField.text = "0";
        operationField.text = "";
    }
    
    @IBAction func equalTapped(AnyObject?) {
        var num1 = lastNumber.toInt();
        var num2 = answerField.text.toInt();
        var answer = 0;
        if (operationField.text == "-") {
            answer = num1! - num2!;
            answerField.text = "\(answer)";
        } else if (operationField == "+") {
            answer = num1! + num2!;
        }
    }
}

