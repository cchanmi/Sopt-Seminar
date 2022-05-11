//
//  TableViewPracticeViewController.swift
//  3th_semina_pracetice
//
//  Created by 황찬미 on 2022/05/01.
//

import UIKit

class TableViewPracticeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: MusicTableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: MusicTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension TableViewPracticeViewController: UITableViewDataSource {
    
    // 테이블 뷰의 셀이 몇 개인지?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MusicDataModel.sampleData.count
    }
    
    // 테이블 뷰를 어떻게 보여 줄 것인지?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.identifier, for: indexPath) as? MusicTableViewCell else { return UITableViewCell() }
        
        cell.setData(MusicDataModel.sampleData[indexPath.row])
        
        return cell
    }
    
}

extension TableViewPracticeViewController: UITableViewDelegate {
    // 셀을 클릭하면 어떻게 할 것인지?
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
