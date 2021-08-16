//
//  ViewController.swift
//  BMI Rechner
//
//  Created by JS on 10.07.21.
//

import UIKit



class ViewController: UIViewController {
    
    // MARK: -Outlets
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var größeTextField: UITextField!
    
    @IBOutlet weak var gewichtTextField: UITextField!
    
    
    @IBOutlet weak var hierKlickenButton: UIButton!
    
    
    // MARK: -viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        hierKlickenButton.backgroundColor = UIColor(white: 0.8, alpha: 0.2)
        hierKlickenButton.isEnabled = false
        addTargetToTextFields()
    }
    
    // MARK: -Funktionen/Actions
    @IBAction func hierKlickenButton_Tapped(_ sender: UIButton) {
        
        
    }
    
func calculateBMI() {
    
    let größe = Double(größeTextField.text!)!
    let gewicht = Double(gewichtTextField.text!)!
    
    
    
    
}
    
func addTargetToTextFields() {
    
    nameTextField.addTarget(self, action: #selector(textFieldChanged), for: UIControl.Event.editingChanged)
    größeTextField.addTarget(self, action: #selector(textFieldChanged), for: UIControl.Event.editingChanged)
    gewichtTextField.addTarget(self, action: #selector(textFieldChanged), for: UIControl.Event.editingChanged)
    
    
    
    
    
    
}
    
    @objc func textFieldChanged() {
        
        if !(nameTextField.text!.isEmpty) && !(größeTextField.text!.isEmpty) && !(gewichtTextField.text!.isEmpty) {
            
            hierKlickenButton.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
            hierKlickenButton.isEnabled = true
            
        } else {
            
            hierKlickenButton.backgroundColor = UIColor(white: 0.8, alpha: 0.2)
            hierKlickenButton.isEnabled = false
            
            
            
            
        }
        
    }
    
    
    
    
    
    
    
}

