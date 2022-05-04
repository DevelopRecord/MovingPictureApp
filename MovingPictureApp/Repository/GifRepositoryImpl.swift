//
//  GifRepositoryImpl.swift
//  MovingPictureApp
//
//  Created by LeeJaeHyeok on 2022/05/01.
//

import Foundation
import Alamofire

struct GifRepositoryImpl {
    static let shared = GifRepositoryImpl()

    func getQuery(keyword: String?) -> String {
        guard let keyword = keyword else { return "&q=" }
        return "&q=\(keyword)"
    }

    func getSetting() -> String {
        let userDefaults = UserDefaults.standard
        let rating = userDefaults.string(forKey: "rating") ?? "g"
        let language = userDefaults.string(forKey: "lang") ?? "en"

        return "&limit=\(25)&offset=\(0)&rating=\(rating)&lang=\(language)"
    }

    func getGifInfo(keyword: String? = nil, completion: @escaping(Result<[GiphyModel], NetworkResult<Any>>) -> Void) {

        // https://api.giphy.com/v1/gifs/search?api_key=KZEGYsikekh16bUz5eISfk4w5Gghdays&q=flower&limit=25&offset=0&rating=g&lang=en
        AF.request(Const.URL.baseURL + Const.URL.searchURL + Const.URL.apiKey + getQuery(keyword: keyword), method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).responseDecodable(of: GiphyModelResponse.self) { response in
            if let error = response.error {
                print("에러에러에러: \(error.localizedDescription)")
                return completion(.failure(.pathErr))
            }

            if let giphy = response.value?.data {
                print("성공: \(giphy)")
                return completion(.success(giphy))
            }
        }

    }
}
