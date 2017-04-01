//
//  ViewController.swift
//  AnimalYears
//
//  Created by Elizabeth Niebauer on 3/31/17.
//  Copyright © 2017 Elizabeth Niebauer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalYearsLabel: UILabel?
    @IBOutlet weak var ageInput: UITextField?
    @IBOutlet weak var animalImage: UIImageView?
    
    
    @IBAction func cowPressed(_ sender: UIButton) {
        let userAge : Float = Float(ageInput!.text!)!
        self.animalYearsLabel?.text = calculateAge(userAge: userAge, animal: "Cow")
        self.animalImage?.image = #imageLiteral(resourceName: "CH_cow_2_cropped.jpg")
    }
    
    @IBAction func elephantPressed(_ sender: UIButton) {
        let userAge : Float = Float(ageInput!.text!)!
        self.animalYearsLabel?.text = calculateAge(userAge: userAge, animal: "Elephant")
        self.animalImage?.image = #imageLiteral(resourceName: "African_Forest_Elephant.jpg")
    }
    
    @IBAction func elmoPressed(_ sender: UIButton) {
        let userAge : Float = Float(ageInput!.text!)!
        let elmoAge = calculateAge(userAge: userAge, animal: "Elmo")
        self.animalYearsLabel?.text = "You're " + elmoAge + " in Elmo Years!"
        self.animalImage?.image = #imageLiteral(resourceName: "Elmo_from_Sesame_Street.gif")
    }
    
    func calculateAge (userAge:Float, animal:String) -> String {
        var calculatedAge:Float
        
        switch animal {
        case "Cow":
            calculatedAge = userAge * 3.64
        case "Elephant":
            calculatedAge = userAge * 1.14
        case "Elmo":
            calculatedAge = 3.5
        default:
            calculatedAge = userAge
        }
        
        return String(calculatedAge)
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

