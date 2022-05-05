//
//  AppearanceFooter.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/05.
//

import UIKit

class AppearanceFooter: BaseView {
    
    // MARK: - Properties
    
    let appVersionLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 14)
    }
    
    // MARK: - Helpers
    
    override func configureUI() {
        let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String // 앱 버전
        appVersionLabel.text = String("・앱 버전 " + appVersion)
    }
    
    override func configureConstraints() {
        addSubview(appVersionLabel)
        appVersionLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(20)
        }
    }
}

