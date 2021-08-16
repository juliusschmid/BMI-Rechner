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
        
        checkBmi(value: calculateBMI())
    
    }
    
func calculateBMI() -> Double {
    
    let größe = Double(größeTextField.text!)!
    let gewicht = Double(gewichtTextField.text!)!
    
    
    let größeQuadrat = größe * größe
    let bmi = gewicht / größeQuadrat
    
    return bmi
    
}
    
    
    func checkBmi(value: Double) {
        
        var message = ""
        
        if value <= 20 {
           message = "Du hast Untergewicht"
       } else if value >= 20 && value <= 25 {
            message = "Du hast normal Gewicht"
       }else if value >= 25 && value <= 30 {
            message = "Du hast übergewicht"
        }else {
            message = "Du hast starkes Übergewicht"
          }

        //gleich , jedoch mit der switch case variante
        
        
//        switch value {
//        case 0...20: message = "Du hast Untergewicht"
//        case 20...25 : message = "Du hast normal Gewicht"
//        case 25...30 : message = "Du hast übergewicht"
//        default: message = "Du hast starkes Übergewicht"
//
//        }
        
        
        
        
        
    erstelleAnzeige(message: message)
    
    }
    
    
    
    // MARK: - erstelle Anzeige
    
    func erstelleAnzeige(message: String) {
        let alert = UIAlertController(title: "\(nameTextField.text!)", message: message,
                                      preferredStyle: .alert)
        let action1 = UIAlertAction(title: "ok", style: .default) { action in }
        
        alert.addAction(action1)
        
        self.present(alert, animated: true, completion: nil)
        
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

