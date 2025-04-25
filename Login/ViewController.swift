//
//  ViewController.swift
//  Login
//
//  Created by Dana Runge on 4/20/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var usernameText: UITextField!

    @IBOutlet var forgotUserNameButton: UIButton!
    
    @IBAction func forgotUserNameAction(_ sender: Any) {
        performSegue(withIdentifier: "Forgot", sender: sender)
    }
    
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "Forgot", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var title = "Error occured"
        if let id = segue.identifier {
            if id == "Forgot" {
                if let sender = sender as? UIButton {
                    if sender == forgotPasswordButton {
                        title = "Forgot Password"
                    } else if sender == forgotUserNameButton {
                        title = "Forgot Username"
                    } else {
                        title = "Illegal sender"
                    }
                } else {
                    title = "Unknown sender"
                }
            } else if id == "Login" {
                title = usernameText.text!
            } else {
                title = "Unknown segue"
            }
        } else {
            title = "Unknown segue identifier"
        }
        segue.destination.navigationItem.title = title
    }

}

