//
//  FirstViewController.swift
//  sopt_30th_semina
//
//  Created by 황찬미 on 2022/04/02.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        nextVC.message = textField.text
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }

}
