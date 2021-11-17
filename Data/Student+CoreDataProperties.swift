//
//  Student+CoreDataProperties.swift
//  Data
//
//  Created by Aishu on 04/06/21.
//  Copyright © 2021 Chethan. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var usn: String?
    @NSManaged public var password: String?

}

extension Student : Identifiable {

}
