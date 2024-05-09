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
        print("Send!")
    }
    
}

