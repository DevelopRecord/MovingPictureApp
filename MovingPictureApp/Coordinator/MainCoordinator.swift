//
//  MainCoordinator.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func start() {
        let rootViewController = GifMainController()
        navigationController?.setViewControllers([rootViewController], animated: true)
    }
//    let rootViewController: GifMainController
    
//    struct Dependency {
//        let GifMainControllerFactory: () -> GifMainController
//    }
//
//    required init(dependency: Dependency) {
//        self.rootViewController = dependency.GifMainControllerFactory()
//    }
    
//    func start() {
//        navigationController?.setViewControllers([rootViewController], animated: true)
//    }
}
