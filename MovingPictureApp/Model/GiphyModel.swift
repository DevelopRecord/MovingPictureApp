//
//  GiphyModel.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import Foundation
//의존성 주입 / Coordinator / BaseViewController 패턴으로 기본 세팅 완료
//Giphy의 JSON 정보 가져오고 출력
struct GiphyModelResponse: Decodable {
    let data: [GiphyModel]
}

struct GiphyModel: Decodable {
    let id: String
    let url: String
    let title: String
    let images: Images
}

struct Images: Decodable {
    let original: OriginalImages
}

struct OriginalImages: Decodable {
    let url: String
}
