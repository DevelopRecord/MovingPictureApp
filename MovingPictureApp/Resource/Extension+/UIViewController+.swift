//
//  UIViewController+.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/02.
//

import UIKit

extension UIViewController {
    
    func configureNavigationBar(title: String) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .secondarySystemBackground

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance // 스크롤 할 때 navigationBar의 사이즈가 컴팩트하게 합니다.
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = title
        navigationController?.navigationBar.isTranslucent = true
    }
}
