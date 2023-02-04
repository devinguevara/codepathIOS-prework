//
//  ViewController.swift
//  Code Path iOS
//
//  Created by Devin Guevara on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var firstnametextfield: UITextField!
    @IBOutlet weak var lastnametextfield: UITextField!
    @IBOutlet weak var schoolnametextfield: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberofPetsLabel: UILabel!
    
    
    @IBOutlet weak var pronounsoutlet: UITextField!
    
    @IBOutlet weak var coloroutlet: UIButton!
    
    @IBAction func coloraction(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func actionpetstepper(_ sender: UIStepper) {
        //so it seems numberofPetsLabel.text subsets the text value of that label, and then sender.value gets the number the stepper is currently on
        numberofPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    
    
    @IBAction func actionintroduceself(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex) // this means the selected option in the IB outlet yearSegmentedControl.
        
        //introduction statement
        //apparently I have to write the text all within the ident and adjacent to each other or it will not read as text
        //I added pronouns since I think that is an important part of any introduction
        
        let introduction = " My name is \(firstnametextfield.text!), I use \(pronounsoutlet.text!) pronouns, and I am a \(year!) year  at \(schoolnametextfield.text!). I have \(numberofPetsLabel.text!) pets, and it is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)

    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

