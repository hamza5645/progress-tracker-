//___FILEHEADER___

import SwiftUI

@main
struct progress_tracker___iosApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            Home_Screen(vm: HomeViewModel())
        }
    }
}
