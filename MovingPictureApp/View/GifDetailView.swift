//
//  GifDetailView.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/02.
//

import UIKit

import Kingfisher

class GifDetailView: BaseView {
    
    // MARK: - Properties
    
    let subView = UIView()
    
    let gifImageView = AnimatedImageView().then { // 이건 왜 안되지?
        $0.backgroundColor = .lightGray
    }
    
    let titleLabel = UILabel().then {
        $0.textColor = .white
        $0.font = UIFont.boldSystemFont(ofSize: 20)
        $0.text = "My Love Flower GIF by cintascotch"
    }
    
    let favoriteButton = UIButton(type: .system).then {
        $0.setImage(UIImage(systemName: "heart"), for: .normal)
        $0.tintColor = .systemRed
        $0.backgroundColor = .clear
        $0.isSelected = false
        $0.addTarget(self, action: #selector(handleFavorite), for: .touchUpInside)
    }
    
    // MARK: - Helpers
    
    override func configureUI() {
        backgroundColor = .secondarySystemBackground
    }
    
    override func configureConstraints() {
        addSubview(gifImageView)
        gifImageView.snp.makeConstraints { make in
            make.height.equalTo(400)
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
        }
        
        addSubview(subView)
        subView.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.left.right.equalToSuperview()
            
        }
        
        subView.addSubview(favoriteButton)
        favoriteButton.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-10)
        }
        
        subView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(gifImageView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
            make.right.equalTo(favoriteButton.snp.left).offset(-20)
        }
    }
    
    // MARK: - Selectors
    
    @objc func handleFavorite(_ sender: UIButton) {
        print("touch!")
        if sender.isSelected {
            sender.isSelected = false
            favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            
        } else {
            sender.isSelected = true
            favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
            
        }
        
    }
}
