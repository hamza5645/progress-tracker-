//
//  MyListCellView.swift
//  progress tracker 2
//
//  Created by Hamza Osama on 8/29/22.
//

import SwiftUI

struct MyListCellView: View {
    
    let vm: MyListViewModel
    
    var body: some View {
        HStack {
            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                .foregroundColor(Color.colorFromHex(vm.colorCode))
            Text(vm.name)
            Spacer()
          
        }
    }
}

