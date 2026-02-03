//
//  ViewController.swift
//  M3Login_Peeples
//
//  Created by Brayden Peeples on 2/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        let id = idTextField.text!
        let pw = passwordTextField.text!
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
        guard id.isEmpty || pw.isEmpty else {
            resultLabel.text = "Please input ID and Password!"
            return
        }
        resultLabel.text = (id == "bpeeples" && pw == "Pa$$w0rd") ? "Login Success!" : "Login Failed!"
    
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

