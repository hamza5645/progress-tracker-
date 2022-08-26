//
//  ListViewModel.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 04/08/2022.
//

import Foundation
import CoreData

struct MyListViewModel: Identifiable {
    
    private let myList: MyList
    
    init(myList: MyList) {
        self.myList = myList
    }
    var id: NSManagedObjectID {
        myList.objectID
    }
    
    var name: String {
        myList.name ?? ""
    }
    
    var colorCode: String {
        myList.name ?? ""
    }
    
}
