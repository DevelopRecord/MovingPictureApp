//
//  AppearanceHeader.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/05.
//

import UIKit

class AppearanceHeader: BaseView {

    // MARK: - Properties

    let userDefaults = UserDefaults.standard

    let appearanceLabel = UILabel().then {
        $0.text = "다크모드"
        $0.font = UIFont.boldSystemFont(ofSize: 16)
    }

    let appearanceSwitch = UISwitch().then {
        $0.backgroundColor = .secondarySystemBackground
        $0.onTintColor = .systemBlue
        $0.addTarget(self, action: #selector(handleAppearanceChange), for: .touchUpInside)
    }

    // MARK: - Helpers

    override func configureUI() {
        appearanceSwitch.isOn = userDefaults.bool(forKey: "appearanceSwitchState")
        
        updateInterfaceStyle()
    }

    override func configureConstraints() {
        addSubview(appearanceLabel)
        appearanceLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(20)
        }

        addSubview(appearanceSwitch)
        appearanceSwitch.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-20)
        }
    }
    
    func updateInterfaceStyle() {
        if let window = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if #available(iOS 15.0, *) {
                let windows = window.windows.first
                    windows?.overrideUserInterfaceStyle = self.appearanceSwitch.isOn == true ? .dark : .light
                userDefaults.set(appearanceSwitch.isOn, forKey: "appearanceSwitchState") // 스위치 상태 저장하기 위해 UserDefaults에 상태 저장
            }
        } else if let window = UIApplication.shared.windows.first {
            if #available(iOS 13.0, *) {
                    window.overrideUserInterfaceStyle = self.appearanceSwitch.isOn == true ? .dark : .light
                userDefaults.set(appearanceSwitch.isOn, forKey: "appearanceSwitchState")
            } else {
                window.overrideUserInterfaceStyle = .light
            }
        }
    }

    // MARK: - Selectors

    @objc func handleAppearanceChange(_ sender: UISwitch) {
        UIView.animate(withDuration: 0.5) {
            self.updateInterfaceStyle()
        }
    }
}
