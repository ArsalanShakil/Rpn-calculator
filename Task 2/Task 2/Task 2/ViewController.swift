//
//  ViewController.swift
//  Task 2
//
//  Created by iosdev on 25.3.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let myStack = IntStack()
    var firstNum = 0
    var secondNum = 0
    var answerVal : Double = 0.0

    @IBOutlet weak var divideOutlet: UIButton!
    @IBOutlet weak var multiplyOutlet: UIButton!
    @IBOutlet weak var plusOutlet: UIButton!
    @IBOutlet weak var minusOutlet: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        numberLabel.text = (numberLabel.text ?? "" ) + String(sender.tag - 1)
    }
    
    @IBAction func oprators(_ sender: UIButton) {
    
        if sender.tag == 0 {
            numberLabel.text = "/"
            firstNum = myStack.pop() ?? 0
            secondNum = myStack.pop() ?? 0
            answerVal = Double(secondNum) / Double(firstNum)
            print(answerVal)
            numberLabel.text = String(answerVal)
        } else if sender.tag == 1 {
            numberLabel.text = "*"
            firstNum = myStack.pop() ?? 0
            secondNum = myStack.pop() ?? 0
            answerVal = Double(secondNum) * Double(firstNum)
            print(answerVal)
            numberLabel.text = String(answerVal)
        } else if sender.tag == 2 {
            numberLabel.text = "+"
            firstNum = myStack.pop() ?? 0
            secondNum = myStack.pop() ?? 0
            answerVal = Double(secondNum) + Double(firstNum)
            print(answerVal)
            numberLabel.text = String(answerVal)
        } else {
            numberLabel.text = "-"
            firstNum = myStack.pop() ?? 0
            secondNum = myStack.pop() ?? 0
            answerVal = Double(secondNum) - Double(firstNum)
            print(answerVal)
            numberLabel.text = String(answerVal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Disable the buttons and change colors if the stack does not have 2 values
        if myStack.hasTwo() == false {
            
            minusOutlet.isEnabled = false
            minusOutlet.backgroundColor = UIColor.lightGray
            
            plusOutlet.isEnabled = false
            plusOutlet.backgroundColor = UIColor.lightGray
            
            divideOutlet.isEnabled = false
            divideOutlet.backgroundColor = UIColor.lightGray
            
            multiplyOutlet.isEnabled = false
            multiplyOutlet.backgroundColor = UIColor.lightGray
            
        }
    }
    
    @IBAction func enterButton(_ sender: UIButton) {
        
        myStack.push(Int(numberLabel.text ?? "0") ?? Int(answerVal))
        numberLabel.text = nil
        
        // Enable the buttons and change colors if the stack does have 2 values
        if myStack.hasTwo() == true {
            
            minusOutlet.isEnabled = true
            minusOutlet.backgroundColor = UIColor.orange
            
            plusOutlet.isEnabled = true
            plusOutlet.backgroundColor = UIColor.orange
            
            divideOutlet.isEnabled = true
            divideOutlet.backgroundColor = UIColor.orange
            
            multiplyOutlet.isEnabled = true
            multiplyOutlet.backgroundColor = UIColor.orange
 
        } else {
            
                minusOutlet.isEnabled = false
                minusOutlet.backgroundColor = UIColor.lightGray
                
                plusOutlet.isEnabled = false
                plusOutlet.backgroundColor = UIColor.lightGray
                
                divideOutlet.isEnabled = false
                divideOutlet.backgroundColor = UIColor.lightGray
                
                multiplyOutlet.isEnabled = false
                multiplyOutlet.backgroundColor = UIColor.lightGray
                
        }
    }
}

