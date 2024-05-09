//
//  LoginViewController.swift
//  UITestingDemo
//
//  Created by ABDELAZiZ EL ARASSi on 9/5/2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionButtonLogin(_ sender: Any) {
        if let email = textFieldEmail.text, email.isEmpty {
            errorHandler(error: "Email is empty")
        }
        if let password = textFieldPassword.text, password.isEmpty {
            errorHandler(error: "Password is empty")
        }
    }
    
    @IBAction func actionButtonNavigateToRegisterScreen(_ sender: Any) {
        let registerVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        registerVC.view.accessibilityIdentifier = "RegisterViewController"
        self.present(registerVC, animated: true)
    }
    
}

extension LoginViewController {
    func errorHandler(error: String) {
        let alert = UIAlertController(title: "Error !", message: error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        DispatchQueue.main.async {
            alert.view.accessibilityIdentifier = "errorAlertDialog"
            self.present(alert, animated: true)
        }
    }
}

