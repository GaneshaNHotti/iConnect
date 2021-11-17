//
//  NewDeveloper+CoreDataProperties.swift
//  Data
//
//  Created by Aishu on 04/06/21.
//  Copyright © 2021 Chethan. All rights reserved.
//
//

import Foundation
import CoreData


extension NewDeveloper {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NewDeveloper> {
        return NSFetchRequest<NewDeveloper>(entityName: "NewDeveloper")
    }

    @NSManaged public var email: String?
    @NSManaged public var password: String?

}

extension NewDeveloper : Identifiable {

}
