//
//  listsView.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 18/07/2022.
//

import SwiftUI

struct listsView: View {
    
    @State private var isPresented: Bool = false
    @StateObject private var vm:HomeViewModel
    
    init(vm:HomeViewModel) {
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    isPresented = true
                } label: {
                    VStack {
                        Image(systemName: "plus")
                            .font(.system(size: 128))
                        //                        .frame(width:500,height:500,alignment:.center)
                        Text("Create your first list")
                    }
                    .foregroundColor(.primary)
                }
                .buttonStyle(.plain)
#if os(iOS)
                .sheet(isPresented: $isPresented) {
                    addNewListView { newListName, colorCode in
                        //Save
                        vm.saveNewList(newListName: newListName, colorCode: colorCode)
                    }
                }
#endif
                
#if os(macOS)
                .sheet(isPresented: $isPresented) {
                    addNewListView { newListName, colorCode in
                        //Save
                    }
                }
#endif
            }
            //        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 1000,maxHeight: .infinity, alignment: .center)
        }
        .navigationTitle("Progress Tracker")
    }
}

struct listsView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = HomeViewModel()
        listsView(vm: vm)
    }
}
