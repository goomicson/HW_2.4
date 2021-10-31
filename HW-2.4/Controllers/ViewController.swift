//
//  ViewController.swift
//  HW-2.4
//
//  Created by Сергей on 30.10.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let profileVC = segue.destination as? ViewController else {return}
//        profileVC.
//    }
    
    // MARK: Alerts
    @IBAction func showLogin(_ sender: Any) {
        showInfoAsAlert(title: "Don't worry!", message: "Your login is \(user1.login)")
    }
    @IBAction func showPassword(_ sender: Any) {
        showInfoAsAlert(title: "Don't worry!", message: "Your login is \(user1.passwrd)")
    }
    
    // MARK: Movings
    @IBAction func loginButtonPressed() {
        if loginTextField.text != user1.login || passwordTextField.text != user1.passwrd {
            showInfoAsAlert(title: "Wrong!", message: "You entered wrong login or password")
        }
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}
// MARK: Extentions
extension ViewController {
    private func showInfoAsAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}

