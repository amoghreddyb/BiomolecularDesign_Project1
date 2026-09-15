//
//  ContentView.swift
//  Biomol_Lec2
//
//  Created by Amogh Reddy Badikol on 9/15/26.
//

import SwiftUI
import RealityKit

struct ContentView: View {

    var body: some View {
        VStack {
            ToggleImmersiveSpaceButton()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
