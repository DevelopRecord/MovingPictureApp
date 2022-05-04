//
//  Favorite+TableView.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/03.
//

import UIKit

extension FavoriteController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteCell.identifier, for: indexPath) as? FavoriteCell ?? FavoriteCell()
        return cell
    }
}
