//
//  AppearanceController.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/05.
//

import UIKit

class AppearanceController: BaseViewController {
    
    // MARK: - Properties
    
    let selfView = AppearanceView()
    
    let headerView = AppearanceHeader()
    let footerView = AppearanceFooter()
    
    // MARK: - Lifecycle
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        configureNavigationBar(title: "화면 설정", isLargeTitle: true)
    }
    
    // MARK: - Helpers

    override func configureUI() {
        view.backgroundColor = .systemBackground
        configureNavigationBar(title: "화면 설정", isLargeTitle: false)
        selfView.tableView.delegate = self
        selfView.tableView.dataSource = self
    }
    
    override func configureConstraints() {
        view.addSubview(selfView)
        selfView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
}
