//
//  AppDelegate.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 07/03/21.
//

/* NOTE: To use this go to project and set up iOS Deployment Target to 14.1 */
 import SwiftUI

@main
struct AppWindow: App {

  var body: some Scene {
    WindowGroup {
      NavigationView {
        AlbumDetailView()
      }
    }
  }
}

/* NOTE: Use this for i0S 13+. This is Legacy UIKit Life Cycle */
//import UIKit
//
//@main
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//    return true
//  }
//
//  // MARK: UISceneSession Lifecycle
//
//  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//  }
//}

