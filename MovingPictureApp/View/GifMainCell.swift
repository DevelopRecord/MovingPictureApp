//
//  GifMainCell.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import UIKit
import Kingfisher

class GifMainCell: BaseCollectionViewCell {

    // MARK: - Properties
    
    static let identifier = "GifMainCell"
    
    let label = UILabel().then {
        $0.textColor = .systemBlue
//        $0.text = "Test"
        $0.numberOfLines = 3
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    let gifImageView = AnimatedImageView().then {
        $0.backgroundColor = .lightGray
    }
    
    var gifModel: GiphyModel? {
        didSet { setData() }
    }
    
    // MARK: - Lifecycle
    
    override func configureUI() {
        
    }
    
    override func configureConstraints() {
//        contentView.addSubview(label)
//        label.snp.makeConstraints { make in
//            make.top.equalToSuperview()
//            make.left.equalToSuperview()
//        }
        
        contentView.addSubview(gifImageView)
        gifImageView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    // MARK: - Helpers
    
    func setData() {
        guard let gifModel = gifModel else { return }
        
        gifImageView.kf.setImage(with: URL(string: gifModel.images.original.url))
//        label.text = gifModel.title
    }
}
