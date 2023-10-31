//
//  FirebaseDemo2023App.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 10/26/23.
//

import SwiftUI

@main
struct FirebaseDemo2023App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    
    var body: some Scene {
        WindowGroup {
            AddDataToCloudView()
        }
    }
    
    
    
}
