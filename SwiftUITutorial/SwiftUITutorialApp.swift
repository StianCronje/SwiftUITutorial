//
//  SwiftUITutorialApp.swift
//  SwiftUITutorial
//
//  Created by Stian Cronje on 2/20/25.
//

import SwiftUI

@main
struct SwiftUITutorialApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
