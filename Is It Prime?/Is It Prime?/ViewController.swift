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
        
        // verify input
        if verifyInput(possibleInt: userInput!) {
            
            if isPrime(possiblePrime: userInput!) {
                self.responseLabel.text = "Prime!"
            } else {
                self.responseLabel.text = "Not Prime!"
            }
            
        } else {
            print("User Input: invalid")
            self.responseLabel.text = "Please enter a whole number (e.g. 1 or 314)"
        }
        
        
    }
    
    func verifyInput (possibleInt: UITextField) -> Bool {
        
        if Int(possibleInt.text!) != nil {
            return true
        } else {
            return false
        }
        
    }
    
    func isPrime (possiblePrime: UITextField) -> Bool {
        
        if Int(possiblePrime.text!) == 1 {
            return false
        } else if Int(possiblePrime.text!) == 2 {
            return true
        } else if Int(possiblePrime.text!)! > 2 && (Int(possiblePrime.text!)! % 2 == 0) {
            return false
        } else {
            for index in 3...(Int(possiblePrime.text!)! - 1) {
                if Int(possiblePrime.text!)! % index == 0 {
                    return false
                }
            }
        }
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

