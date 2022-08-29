//
//  List+extensions.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 03/08/2022.
//

import Foundation
import CoreData


extension MyList {
     static var all: NSFetchRequest<MyList> {
        let request = MyList.fetchRequest()
        request.sortDescriptors = []
        return request
    }
    
    func save() throws {
        try CoreDataManager.shared.context.save()
        
    }
    
}
