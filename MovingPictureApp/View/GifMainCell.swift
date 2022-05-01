//
//  GifMainCell.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import UIKit

class GifMainCell: BaseCollectionViewCell {

    // MARK: - Properties
    
    static let identifier = "GifMainCell"
    
    let label = UILabel().then {
        $0.textColor = .white
        $0.text = "Test"
    }
    
    // MARK: - Lifecycle
    
    override func configureUI() {
        
    }
    
    override func configureConstraints() {
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
