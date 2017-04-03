//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Elizabeth Niebauer on 4/3/17.
//  Copyright © 2017 Elizabeth Niebauer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var responseLabel: UILabel!
    
    @IBAction func submitPressed(_ sender: Any) {
        
        let inputString = userInput.text!
        
        if verifyInput(possibleInt: inputString) {
            
            let inputNumber = Int(inputString)!
            
            if isPrime(possiblePrime: inputNumber) {
                self.responseLabel.text = "\(inputNumber) is Prime!"
            } else {
                self.responseLabel.text = "\(inputNumber) is Not Prime!"
            }
        } else {
            self.responseLabel.text = "Please enter a positive whole number (e.g. 1)"
        }
    }
    
    func verifyInput (possibleInt: String) -> Bool {
        
        if Int(possibleInt) != nil {
            return true
        } else {
            return false
        }
    }
    
    func isPrime (possiblePrime: Int) -> Bool {
        
        if possiblePrime == 1 {
            return false
        } else if possiblePrime == 2 {
            return true
        } else if possiblePrime > 2 && (possiblePrime % 2 == 0) {
            return false
        } else {
            for index in 2...(possiblePrime - 1) {
                if possiblePrime % index == 0 {
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

