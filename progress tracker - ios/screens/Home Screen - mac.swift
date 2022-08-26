//
//  Home Screen - mac.swift
//  progress tracker - mac
//
//  Created by Hamza Osama on 18/07/2022.
//

import SwiftUI

struct Home_Screen___mac: View {
    var body: some View {
        NavigationView {
            sideBar()
            Text("Choose a list to view more details")
        }
    }
}

struct Home_Screen___mac_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen___mac()
    }
}
