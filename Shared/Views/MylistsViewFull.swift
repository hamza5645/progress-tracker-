//
//  MylistsViewFull.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 8/19/22.
//

import SwiftUI

struct MylistsViewFull: View {
    
    let myLists: [MyListViewModel]
    
    //    if myLists.isEmpty {
    //        MyListsView()
    //    } else {
    //        List(myLists) { myList in
    //            Text(myList.name)
    //        }
    //    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                List(myLists) { myLists in
                    Text(myLists.name)
                }
#if os(iOS)
                Divider()
                Button("Add List") {
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
#endif
                
#if os(macOS)
                Divider()
                Button("Add List") {
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
#endif
            }
        }
        .navigationTitle("Progress Tracker")
    }
}

struct MylistsViewFull_Previews: PreviewProvider {
    static var previews: some View {
        MylistsViewFull(myLists: [])
    }
}
