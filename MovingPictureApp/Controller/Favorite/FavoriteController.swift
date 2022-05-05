//
//  FavoriteController.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/03.
//

import UIKit

class FavoriteController: BaseViewController {
    
    // MARK: - Properties
    
    let selfView = FavoriteView()
    
    // MARK: - Helpers
    
    override func configureUI() {
        configureNavigationBar(title: "Favorite", isLargeTitle: true)
        selfView.tableView.delegate = self
        selfView.tableView.dataSource = self
        selfView.tableView.rowHeight = 130
    }
    
    override func configureConstraints() {
        view.addSubview(selfView)
        selfView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
}
