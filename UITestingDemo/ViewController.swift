//
//  ViewController.swift
//  UITestingDemo
//
//  Created by ABDELAZiZ EL ARASSi on 9/5/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldRepeatPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButtonSend(_ sender: Any) {
        print("click on Send!")
        
        if let firstName = textFieldFirstName.text, firstName.isEmpty {
            errorHandler(error: "First name is empty")
        }
        if let lastName = textFieldLastName.text, lastName.isEmpty {
            errorHandler(error: "Last name is empty")
        }
        if let email = textFieldEmail.text, email.isEmpty {
            errorHandler(error: "Email is empty")
        }
        if let password = textFieldPassword.text, password.isEmpty {
            errorHandler(error: "Password is empty")
        }
        if let repeatPassword = textFieldRepeatPassword.text, repeatPassword.isEmpty {
            errorHandler(error: "Repeat Password is empty")
        }
        
    }
    
}


extension ViewController {
    func errorHandler(error: String) {
        let alert = UIAlertController(title: "Error !", message: error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        DispatchQueue.main.async {
            alert.view.accessibilityIdentifier = "errorAlertDialog"
            self.present(alert, animated: true)
        }
        
    }
}
