//
//  ViewController.swift
//  Calculator
//
//  Created by Joey Mustaklem on 7/19/14.
//  Copyright (c) 2014 Joey Mustaklem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(AnyObject) {
        println("Button Tapped!");
    }


}

