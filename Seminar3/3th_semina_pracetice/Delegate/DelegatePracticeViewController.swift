//
//  DelegatePracticeViewController.swift
//  3th_semina_pracetice
//
//  Created by 황찬미 on 2022/04/30.
//

import UIKit

class DelegatePracticeViewController: UIViewController, SecondViewControllerDelegate {
    
    func sendData(data: String) {
        dataLabel.text = data
    }
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var dataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
    
    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        secondVC.delegate = self
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

extension DelegatePracticeViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작되었습니다!")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("retrun 버튼이 눌렸어요")
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 끝났습니다!!!")
    }
}
