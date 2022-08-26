//
//  Home Screen.swift
//  progress tracker - ios
//
//  Created by Hamza Osama on 18/07/2022.
//

import SwiftUI

struct Home_Screen: View {
    var body: some View {
        NavigationView {
            VStack {
                MylistsViewFull(vm: HomeViewModel())
            }
            .navigationTitle("Lists")
        }
    }
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
