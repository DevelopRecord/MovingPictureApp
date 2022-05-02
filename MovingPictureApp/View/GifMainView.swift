//
//  GifMainView.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import UIKit

class GifMainView: BaseView {

    // MARK: - Properties

    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
        $0.backgroundColor = .secondarySystemBackground
        $0.register(GifMainCell.self, forCellWithReuseIdentifier: GifMainCell.identifier)
    }

    let searchController = UISearchController(searchResultsController: nil).then {
        $0.searchBar.placeholder = "생각나는 사물이나 단어들을 입력해 보세요."
        $0.obscuresBackgroundDuringPresentation = false
    }

    // MARK: - Helpers

    override func configureUI() {

    }

    override func configureConstraints() {
        addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
}
