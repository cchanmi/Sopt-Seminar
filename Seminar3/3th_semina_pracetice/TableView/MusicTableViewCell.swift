//
//  MusicTableViewCell.swift
//  3th_semina_pracetice
//
//  Created by 황찬미 on 2022/05/01.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    // Cell을 구분하기 위한 Identifier
    static let identifier = "MusicTableViewCell"
    
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var musicDesciptionLabel: UILabel!
    @IBOutlet weak var moveButton: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    // 각 Cell별로 다른 정보가 표시되어야 하므로, 값을 넣어 주는 함수를 생성
    func setData(_ musicData: MusicDataModel) {
        albumCoverImage.image = musicData.albumImage
        musicTitleLabel.text = musicData.musicTitle
        musicDesciptionLabel.text = musicData.description
    }
    
}
