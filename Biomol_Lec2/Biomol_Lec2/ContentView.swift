//
//  ContentView.swift
//  Biomol_Lec2
//
//  Created by Amogh Reddy Badikol on 9/15/26.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var body: some View {
        VStack {
            Text("Five Shapes")
                .font(.largeTitle)
            
            Button("Show Shapes") {
                Task {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
            }
        }
        .padding()
    }
}
