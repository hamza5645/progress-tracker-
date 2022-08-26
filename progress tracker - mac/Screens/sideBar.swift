//
//  sideBar.swift
//  progress tracker - mac
//
//  Created by Hamza Osama on 18/07/2022.
//

import SwiftUI

struct sideBar: View {
    var body: some View {
        VStack {
           listsView(vm: HomeViewModel())
        }
//        .frame(width: 20)
    }
       
}
    

struct sideBar_Previews: PreviewProvider {
    static var previews: some View {
        sideBar()
    }
}
