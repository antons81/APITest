//
//  Object.swift
//  APITest
//
//  Created by Anton Stremovskiy on 4/24/17.
//  Copyright © 2017 Anton Stremovskiy. All rights reserved.
//

import Foundation
import SwiftyJSON


struct Contact {
    let  id: String
    let  email: String
    let  name: String
    let  gender: String
    let  phone: Phone
}

extension Contact: JSONConvertable {
    
    static func fromJSON(_ json: JSON) -> Contact {
        let id = json["id"].stringValue
        let email = json["email"].stringValue
        let name = json["name"].stringValue
        let gender = json["gender"].stringValue
        let phone = Phone.fromJSON(json["phone"])
        return Contact(id: id,
                       email: email,
                       name: name,
                       gender: gender,
                       phone: phone)
    }
}

struct ContactsResponse {
    let result: [Contact]
}

extension ContactsResponse: JSONConvertable {
    
    static func fromJSON(_ json: JSON) -> ContactsResponse {
        let results = Contact.fromJSONArray(json["contacts"].arrayValue)
        return ContactsResponse(result: results)
    }
}

