//
//  Profile+CoreDataProperties.swift
//  
//
//  Created by Anton Stremovskiy on 8/11/17.
//
//

import Foundation
import CoreData


extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var email: String?
    @NSManaged public var gender: String?
    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var toPhones: Phones?

}
