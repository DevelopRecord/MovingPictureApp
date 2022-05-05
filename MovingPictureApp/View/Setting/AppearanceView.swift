//
//  AppearanceView.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/05.
//

import UIKit

class AppearanceView: BaseView {
    
    // MARK: - Properties
    
    let tableView = UITableView().then {
        $0.backgroundColor = .secondarySystemBackground
        $0.separatorStyle = .none
        $0.register(AppearanceCell.self, forCellReuseIdentifier: AppearanceCell.identifier)
    }
    
    // MARK: - Helpers
    
    override func configureUI() {
        
    }
    
    override func configureConstraints() {
        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
}
