//
//  CompositionRoot.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

struct AppDependency {
    let mainCoordinator: MainCoordinator
}

extension AppDependency {
    static func resolve() -> AppDependency {
        let mainCoordinator: MainCoordinator = .init()
        
        return .init(mainCoordinator: mainCoordinator)
    }
}
