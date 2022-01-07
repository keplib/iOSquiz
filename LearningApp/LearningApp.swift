//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Balázs Képli on 7/1/22.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
