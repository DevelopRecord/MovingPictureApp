//
//  GifDetailController.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/03.
//

import UIKit

class GifDetailController: BaseViewController {

    // MARK: - Properties

    let selfView = GifDetailView()

    override func configureUI() {

    }

    override func configureConstraints() {
        view.addSubview(selfView)
        selfView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
}
