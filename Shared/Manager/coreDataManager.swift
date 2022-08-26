//
//  coreDataManager.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 03/08/2022.
//

import Foundation
import CoreData

class coreDataManager {
    
    private let persistantContainer: NSPersistentContainer
    static let shared = coreDataManager()
    
    var context: NSManagedObjectContext {
        return persistantContainer.viewContext
    }
    
    private init() {
        persistantContainer = NSPersistentContainer(name: "progress tracker model")
        persistantContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to inisialize core data \(error)")
            }
        }
    }
    
}
