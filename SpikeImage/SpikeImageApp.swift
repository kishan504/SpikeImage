//
//  SpikeImageApp.swift
//  SpikeImage
//
//  Created by Kishan Singh on 04/12/24.
//

import SwiftUI

@main
struct SpikeImageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
          ContentView(images: ["home1", "home2"])
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
