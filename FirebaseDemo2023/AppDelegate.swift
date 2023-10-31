//
//  AppDelegate.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 10/26/23.
//

import Foundation
import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

