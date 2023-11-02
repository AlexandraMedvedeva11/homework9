//
//  ViewController.swift
//  homework 9
//
//  Created by  Medvedeva Alexandra on 2.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen: Double = 0
    var firstNum: Double = 0
    var mathSing: Bool = false
    var operation: Double = 0
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
    
        if mathSing == true {
            result.text = String(sender.tag)
            mathSing = false
        }
        else {
            
            result.text = result.text! + String(sender.tag)
        }
        numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func operations(_ sender: UIButton) {
   
        if result.text! == "" && sender.tag != 1 {
            firstNum = Double(result.text!)!
            
            if sender.tag == 1 {
                result.text = "+"
            } else if sender.tag == 2 {
                if operation == 1 {
                    result.text = String (firstNum + numberFromScreen)
                } else if sender.tag == 0 {
                    result.text = ""
                    firstNum = 0
                    numberFromScreen = 0
                    operation = 0
                }
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

