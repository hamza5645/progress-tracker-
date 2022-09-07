//
//  coreDataManager.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 03/08/2022.
//

import Foundation
import CoreData

class CoreDataManager {
    
    private let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "progress tracker model")
        let description = persistentContainer.persistentStoreDescriptions.first
        // This allows a 'non-iCloud' sycning
        // container to keep track of changes
        // as if it was an iCloud syncing container

        description?.setOption(true as NSNumber, forKey: NSPersistentHistoryTrackingKey)
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
}
