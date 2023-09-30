//
//  ViewController.swift
//  Lab3-UIText
//
//  Created by Shaik Mathar Syed on 23/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var outputTextBox: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputTextBox.isUserInteractionEnabled = false
    }

    @IBAction func addButton(_ sender: Any) {
        outputTextBox.text = "Full Name: " + (firstName.text ?? "") + " " + (lastName.text ?? "")
        outputTextBox.text += "\nCountry: " + (country.text ?? "")
        outputTextBox.text += "\nAge: " + (age.text ?? "")
    }
    @IBAction func submitButton(_ sender: Any) {
        if ((firstName.text != "") && (lastName.text != "") && (country.text != "") && (age.text != "")) {
            feedbackLabel.text = "Successfully Submitted!"
        }
        else {
            feedbackLabel.text = "Complete the missing Info!"
        }
    }
    @IBAction func clearButton(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        outputTextBox.text = ""
        feedbackLabel.text = ""
    }
}

