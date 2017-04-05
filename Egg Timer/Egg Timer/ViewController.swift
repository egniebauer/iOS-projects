//
//  ViewController.swift
//  Egg Timer
//
//  Created by Elizabeth Niebauer on 4/3/17.
//  Copyright © 2017 Elizabeth Niebauer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockLabel: UILabel!
    var timer = Timer()
    
    @IBAction func playPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pausePressed(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func minusPressed(_ sender: Any) {
        var timeRemaining = Int(self.clockLabel.text!)!
        
        if timeRemaining <= 9 {
            timeRemaining = 0
            self.clockLabel.text = "\(timeRemaining)"
        } else {
            timeRemaining -= 10
            self.clockLabel.text = "\(timeRemaining)"
        }
    }
    
    @IBAction func plusPressed(_ sender: Any) {
        let timeRemaining = Int(self.clockLabel.text!)! + 10
        self.clockLabel.text = "\(timeRemaining)"
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        pausePressed((Any).self)
        self.clockLabel.text = "210"
    }
    
    func processTimer() {
        
        let timeString = self.clockLabel.text!
        var timeRemaining = Int(timeString)!
        
        if timeRemaining <= 0 {
            timer.invalidate()
        } else {
            timeRemaining -= 1
            self.clockLabel.text = "\(timeRemaining)"
        }

    }
    
    @IBOutlet weak var resetPressed: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

