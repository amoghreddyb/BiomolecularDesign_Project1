// xcode: set sdk=visionOS

//
//  Biomol_Lec2App.swift
//  Biomol_Lec2
//
//  Created by Amogh Reddy Badikol on 9/15/26.
//

import SwiftUI

@main
struct Biomol_Lec2App: App {
    
    @State private var appModel = AppModel()
    
    var body: some Scene {
#if os(visionOS)
        WindowGroup {
            ContentView()
                .environment(appModel)
        }
        
        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
        .immersionStyle(selection: .constant(.full), in: .full)
#else
        WindowGroup {
            ContentView()
                .environment(appModel)
        }
#endif
    }
}

