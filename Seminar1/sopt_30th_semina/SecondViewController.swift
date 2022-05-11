//
//  SecondViewController.swift
//  sopt_30th_semina
//
//  Created by 황찬미 on 2022/04/02.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMessage()
    }
    
    /*
        present - dismiss : modal
        push - pop : navigation
     */
    
    private func setMessage() {
        if let message = message {
            label.text = message
            label.sizeToFit()
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
