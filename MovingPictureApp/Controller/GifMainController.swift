//
//  GifMainController.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import UIKit

class GifMainController: BaseViewController {

    // MARK: - Properties

    let selfView = GifMainView()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        GifRepositoryImpl().getGifInfo(keyword: "flower") { gif in
            print("gif 정보는 ?? : \(gif)")
        }
    }

    override func configureUI() {
        configureNavigationBar()
        selfView.searchController.delegate = self
        selfView.searchController.searchResultsUpdater = self
        navigationItem.searchController = selfView.searchController
        selfView.collectionView.delegate = self
        selfView.collectionView.dataSource = self
    }

    override func configureConstraints() {
        view.addSubview(selfView)
        selfView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }

    func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .secondarySystemBackground

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance // 스크롤 할 때 navigationBar의 사이즈가 컴팩트하게 합니다.
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Search"

        navigationController?.navigationBar.isTranslucent = true
    }
}

extension GifMainController: UISearchControllerDelegate {

}

extension GifMainController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text)
    }
}
