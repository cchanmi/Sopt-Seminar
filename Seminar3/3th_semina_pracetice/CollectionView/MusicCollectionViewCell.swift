//
//  MusicCollectionViewCell.swift
//  3th_semina_pracetice
//
//  Created by 황찬미 on 2022/05/01.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MusicCollectionViewCell"
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(albumData: AlbumDataModel) {
        albumImageView.image = UIImage(named: albumData.albumImageName)
        albumTitleLabel.text = albumData.albumTitle
        singerLabel.text = albumData.albumSinger
    }
    
}
