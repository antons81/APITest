//
//  Phone.swift
//  APITest
//
//  Created by Anton Stremovskiy on 7/31/17.
//  Copyright © 2017 Anton Stremovskiy. All rights reserved.
//

import Foundation
import SwiftyJSON


struct Phone {
    let  home: String
    let  mobile: String
    let  office: String
}

extension Phone: JSONConvertable {
    
    static func fromJSON(_ json: JSON) -> Phone {
        let home = json["home"].stringValue
        let mobile = json["mobile"].stringValue
        let office = json["office"].stringValue
        return Phone(home: home, mobile: mobile, office: office)
    }
}

