//
//  ViewController.swift
//  testApp
//
//  Created by Матвей Авдеев on 12.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        guard loginTF.text == user.logIn, passwordTF.text == user.password else {
            
            showAlert(
                withTitle: "Wrong login or Password",
                andMessage: "Plese enter correct login and password",
                textField: passwordTF
            )
            return false
            
        }
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func promtButtons(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oop!🙀", andMessage: "Your login is \(user.logIn)")
        : showAlert(withTitle: "Oop!🙀", andMessage: "Your password is \(user.password)")
    }
    
}

extension LoginViewController {
    
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = nil
            
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
