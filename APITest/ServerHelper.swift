//
//  ServerHelper.swift
//  APITest
//
//  Created by Anton Stremovskiy on 4/21/17.
//  Copyright © 2017 Anton Stremovskiy. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire


struct HttpConstants {
    static let ContentType              = "application/json"
    static let ContentTypeURLEncoded    = "application/x-www-form-urlencoded"
    static let BASE_URL                 = "http://api.androidhive.info/contacts/"
}


class ServerHelper  {
    
    static let shared : ServerHelper = ServerHelper()
    
    private init() {
        debugPrint("ServerHelper initialized")
    }

    func createRequest<T: JSONConvertable>(url: String,
                       method: Alamofire.HTTPMethod,
                       params: [String: Any]?,
                       resultObject: @escaping (T) -> Void) {
        
        let url = try? url.asURL()
        
        Alamofire.request(url!, method: method, parameters: params, encoding: JSONEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [HttpConstants.ContentType])
            .responseJSON { response in
                switch response.result {
                case .success:
                    let json = JSON(response.result.value ?? "")
                    resultObject(T.fromJSON(json))
                    break
                case .failure(let error):
                    debugPrint(error)
            }
        }
    }

}
