//
//  SecondViewController.swift
//  3th_semina_pracetice
//
//  Created by 황찬미 on 2022/04/30.
//

import UIKit

protocol SecondViewControllerDelegate {
    func sendData(data: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendDataButtonDidTap(_ sender: Any) {
        
        if let text = dataTextField.text {
            delegate?.sendData(data: text)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
}
