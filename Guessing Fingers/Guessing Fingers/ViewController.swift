//
//  ViewController.swift
//  Guessing Fingers
//
//  Created by Elizabeth Niebauer on 4/1/17.
//  Copyright © 2017 Elizabeth Niebauer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessInput: UITextField!
    @IBOutlet weak var answerLabel: UILabel!

    @IBAction func guessPressed(_ sender: UIButton) {
        
        print ("guess pressed")
        
        let fingers:String = String(arc4random_uniform(6))

        if  self.guessInput.text == fingers {
            self.answerLabel.text = "Correct! I'm holding up \(fingers) fingers."
        } else {
            self.answerLabel.text = "Sorry, wrong guess. The correct answer was \(fingers) fingers."
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("view did load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

