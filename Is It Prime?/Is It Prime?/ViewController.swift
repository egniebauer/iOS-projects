//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Elizabeth Niebauer on 4/3/17.
//  Copyright © 2017 Elizabeth Niebauer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField?
    @IBOutlet weak var responseLabel: UILabel!
    
    @IBAction func submitPressed(_ sender: Any) {
        print("submit pressed")
        
        // verify input
        if verifyInput(possibleInt: userInput!) {
            self.responseLabel.text = "Valid Input"
            print("Valid Input")
        } else {
            self.responseLabel.text = "Invalid Input"
            print("Invalid Input")
        }
        
        
    }
    
    func verifyInput (possibleInt: UITextField) -> Bool{
        
        if Int(possibleInt.text!) != nil {
            return true
        } else {
            return false
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print ("view did load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

