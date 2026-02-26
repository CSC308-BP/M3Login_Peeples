//
//  ViewController.swift
//  M3Login_Peeples
//
//  Created by Brayden Peeples on 2/3/26.
//

import UIKit

class ViewController: UIViewController {

    
    // Logical NOT: !expr
    // Forced Unwrapping: optional_expr!
    // Implicit Unwrapped Optionals (IUO): type!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        guard let id = idTextField.text, !id.isEmpty else {
            showAlert(message: "ID must not be empty!")
            return
        }
        guard let pw = passwordTextField.text, !pw.isEmpty else {
            showAlert(message: "Password must not be empty!")
            return
        }
        
        // id: bpeeples
        // pw: Pa$$w0rd
        
        //if id == "bpeeples" && pw == "Pa$$w0rd" {
        //    resultLabel.text = "Login Success!"
        //    print("login success")
        //}
        //else {
        //    resultLabel.text = "Login Failed!"
        //    print("login failed")
        //if id.isEmpty || pw.isEmpty {
        //    resultLabel.text = "Please input ID and Password!"
        //    return // early exit
        //}
        // guard condition else{return}
        //guard id.isEmpty || pw.isEmpty else {
        //    resultLabel.text = "Please input ID and Password!"
        //    return
        //}
        resultLabel.text = (id == "bpeeples" && pw == "Pa$$w0rd") ? "Login Success!" : "Login Failed!"
    
    }
    
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        idTextField.becomeFirstResponder()
    }

}

