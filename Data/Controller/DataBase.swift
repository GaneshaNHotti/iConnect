//
//  Database.swift
//  Data
//
//  Created by Aishu on 04/06/21.
//  Copyright © 2021 Chethan. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Database {

    static var shareInstance = Database()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object: [String:String]){
        let developer = NSEntityDescription.insertNewObject(forEntityName: "Developer", into: context!) as! Developer
        developer.email = object["email"] 
        developer.password = object["password"]
        do{
            try context?.save()
        }catch{
            print("data is not saved")
        }
        
    }
    // To get data from DB
    
    func getStudentData() -> [Developer] {
        var developer = [Developer]()
        let featchRequest = NSFetchRequest<NSManagedObject>(entityName: "developer")
        do {
            developer = try context?.fetch(featchRequest) as! [Developer]
            
        }catch{
            print("can not get data")
        }
        return developer
    }
}
