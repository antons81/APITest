//
//  Object.swift
//  APITest
//
//  Created by Anton Stremovskiy on 4/24/17.
//  Copyright © 2017 Anton Stremovskiy. All rights reserved.
//

import Foundation
import SwiftyJSON


public protocol JSONConvertible {
    static func fromJSON(_ json: JSON) -> Self
}

extension JSONConvertible {
    static func fromJSONArray(_ json: [JSON]) -> [Self] {
        return json.map { Self.fromJSON($0) }
    }
}


struct Contacts: JSONConvertible {
    //let  id: Int
    //let  email: String
    //let  phone: String
    let contacts: Any
}

extension Contacts {
    
    static func fromJSON(_ json: JSON) -> Contacts {
        //let id = json["id"].intValue
        //let email = json["email"].stringValue
        //let phone = json["phone"].stringValue
        let contacts = json["contacts"].arrayObject
        //return Contacts(id: id, email: email, phone: phone)
        return Contacts(contacts: contacts ?? [])
    }

}
