//
//  ViewController.swift
//  sopt_30th_semina
//
//  Created by 황찬미 on 2022/04/02.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messayLabel.text = "도착한 메시지가 없어요"
    }

    @IBOutlet weak var messayLabel: UILabel!
    
    @IBAction func button(_ sender: Any) {
        messayLabel.text = "새로운 메시지가 도착했어요"
        messayLabel.textColor = .green
        messayLabel.sizeToFit()
        AudioServicesPlayAlertSound(SystemSoundID(1307))
    }
}

