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

    var gifModel: [GiphyModel] = []

    var searchText: String = ""

    // MARK: - Lifecycle
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configureNavigationBar(title: "Search", isLargeTitle: true)
    }

    // MARK: - Helpers

    override func configureUI() {
        selfView.searchController.searchBar.delegate = self
        navigationItem.searchController = selfView.searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        selfView.collectionView.delegate = self
        selfView.collectionView.dataSource = self
        let right = UIBarButtonItem(image: UIImage(systemName: "gearshape.fill"), style: .plain, target: self, action: #selector(handleSetting))
        navigationItem.rightBarButtonItem = right
    }

    override func configureConstraints() {
        view.addSubview(selfView)
        selfView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }

    func getGifData() {
        GifRepositoryImpl.shared.getGifInfo(keyword: searchText) { result in
            switch result {
            case .success(let gifData):
                DispatchQueue.main.async {
                    self.gifModel = gifData
                    print("gif 정보는 ?? : \(gifData)")

                    self.selfView.collectionView.reloadData()
                }

            case .failure(let err):
                print("err: \(err.localizedDescription)")
            }
        }
    }

    // MARK: - Selectors

    @objc func handleSetting() {
        let controller = AppearanceController()
        navigationController?.pushViewController(controller, animated: true)
    }
}

extension GifMainController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // 서치버튼 클릭시 값 리턴
        if let text = searchBar.text {
            searchText = text
            getGifData()
            if text.isEmpty {
                navigationItem.title = "Search"
            } else {
                navigationItem.title = searchText
            }
        }
    }
}
