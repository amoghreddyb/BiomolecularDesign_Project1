import SwiftUI
import RealityKit
import UIKit

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            let gold = UIColor(red:0.8314, green:0.6863, blue:0.2157, alpha: 1.0)
            
            // Box 1 (With stretch goal components for touch gestures)
            let box1 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [SimpleMaterial(color: gold, isMetallic: false)])
            box1.position = [0, 1.2, -1]
            box1.components.set(InputTargetComponent())
            box1.components.set(CollisionComponent(shapes: [.generateBox(size: [0.15, 0.15, 0.15])]));            content.add(box1)
            box1.move(to: Transform(translation: [0, 1.60, -1]), relativeTo: nil, duration: 2.0)

            // Box 2
            let box2 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [SimpleMaterial(color: gold, isMetallic: false)])
            box2.position = [0.3, 1.2, -1]
            content.add(box2)
            box2.move(to: Transform(translation: [0.3, 1.75, -1]), relativeTo: nil, duration: 2.0)

            // Box 3
            let box3 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [SimpleMaterial(color: gold, isMetallic: false)])
            box3.position = [0.6, 1.2, -1]
            content.add(box3)
            box3.move(to: Transform(translation: [0.6, 1.90, -1]), relativeTo: nil, duration: 2.0)

            // Box 4
            let box4 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [SimpleMaterial(color: gold, isMetallic: false)])
            box4.position = [-0.3, 1.2, -1]
            content.add(box4)
            box4.move(to: Transform(translation: [-0.3, 1.45, -1]), relativeTo: nil, duration: 2.0)
            
            // Box 5
            let box5 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [SimpleMaterial(color: gold, isMetallic: false)])
            box5.position = [-0.6, 1.2, -1]
            content.add(box5)
            box5.move(to: Transform(translation: [-0.6, 1.30, -1]), relativeTo: nil, duration: 2.0)
        }
        // Stretch Goal Gesture: Dragging
        .gesture(
            DragGesture()
                .targetedToAnyEntity()
                .onChanged { value in
                    value.entity.position = value.convert(
                        value.location3D, from: .local, to: value.entity.parent!)
                }
        )
        // Stretch Goal Gesture: Rotating
        .gesture(
            RotateGesture3D()
                .targetedToAnyEntity()
                .onChanged { value in
                    value.entity.orientation = value.convert(value.rotation, from: .local, to: value.entity.parent!)
                }
        )
    }
}
