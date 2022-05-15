//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Dan Percic on 14.05.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
