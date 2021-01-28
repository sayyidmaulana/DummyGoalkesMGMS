//
//  iCareLoginApp.swift
//  iCareLogin
//
//  Created by Sayyid Maulana Khakul Yakin on 08/01/21.
//

import SwiftUI
import Firebase

@main
struct iCareLoginApp: App {
    
    init() {
        FirebaseApp.configure()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
