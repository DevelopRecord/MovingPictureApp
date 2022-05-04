//
//  GifMain+CollectionView.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import UIKit

extension GifMainController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("카운트: \(gifModel.count)")
        return gifModel.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GifMainCell.identifier, for: indexPath) as? GifMainCell ?? GifMainCell()
        cell.gifModel = gifModel[indexPath.row]
        cell.backgroundColor = .systemGray5
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width / 3 - 8
        return CGSize(width: width, height: width)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = GifDetailController()
        controller.selfView.gifModel = gifModel[indexPath.row]
        controller.modalPresentationStyle = .automatic
        self.present(controller, animated: true, completion: nil)
    }
}
