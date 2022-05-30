//
//  ViewController.swift
//  Seminar4
//
//  Created by 황찬미 on 2022/05/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtontapped(_ sender: Any) {
        login()
    }
    
}

extension ViewController {
    func login() {
        guard let name = nameTextField.text else { return }
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text  else { return }
        
        UserService.shared.login(
            name: name,
            email: email,
            password: password) { response in
                switch response {
                case .success(let data):
                    guard let data = data as? LoginResponse else { return }
                    print(data)
                default:
                    return
            }
        }
    }
}
