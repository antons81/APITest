//
//  SwiftyJSON+JSONConvertable.swift
//  APITest
//
//  Created by Anton Stremovskiy on 7/31/17.
//  Copyright © 2017 Anton Stremovskiy. All rights reserved.
//

import Foundation
import SwiftyJSON


public protocol JSONConvertable {
    static func fromJSON(_ json: JSON) -> Self
}

extension JSONConvertable {
    static func fromJSONArray(_ json: [JSON]) -> [Self] {
        return json.map { Self.fromJSON($0) }
    }
}
