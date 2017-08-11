//
//  Phones+CoreDataProperties.swift
//  
//
//  Created by Anton Stremovskiy on 8/11/17.
//
//

import Foundation
import CoreData


extension Phones {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Phones> {
        return NSFetchRequest<Phones>(entityName: "Phones")
    }

    @NSManaged public var home: String?
    @NSManaged public var mobile: String?
    @NSManaged public var work: String?

}
