//
//  AppearanceCell.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/05.
//

import UIKit

class AppearanceCell: BaseTableViewCell {

    // MARK: - Properties

    static let identifier = "SettingCell"

    let appearanceLabel = UILabel().then {
        $0.text = "다크모드"
        $0.font = UIFont.boldSystemFont(ofSize: 16)
    }

    let appearanceSwitch = UISwitch().then {
        $0.backgroundColor = .secondarySystemBackground
        $0.onTintColor = .systemBlue
    }

    // MARK: - Helpers

    override func configureUI() {

    }

    override func configureConstraints() {
        
    }
}
