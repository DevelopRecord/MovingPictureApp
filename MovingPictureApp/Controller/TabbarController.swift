//
//  TabbarController.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/03.
//

import UIKit

class TabbarController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        let gifMainController = createTabbar(title: "검색", image: UIImage(systemName: "magnifyingglass"), rootViewController: GifMainController())
        let favoriteController = createTabbar(title: "좋아요", image: UIImage(systemName: "heart"), rootViewController: FavoriteController())
        
        viewControllers = [gifMainController, favoriteController]
        
    }
    
    private func createTabbar(title: String, image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.title = title
        nav.tabBarItem.image = image
        
        return nav
    }
}
