import SwiftUI
import RealityKit

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            // Anchor an origin entity in front of the user
            let origin = AnchorEntity(.head)
            origin.position = [0, 0, -1.2]

            // Create five basic shapes with different colors and positions
            let sphere = ModelEntity(mesh: .generateSphere(radius: 0.08), materials: [SimpleMaterial(color: .red, isMetallic: false)])
            sphere.position = [-0.32, 0.10, 0]

            let box = ModelEntity(mesh: .generateBox(size: 0.14), materials: [SimpleMaterial(color: .blue, isMetallic: false)])
            box.position = [-0.16, -0.05, 0]

            let cone = ModelEntity(mesh: .generateCone(topRadius: 0.0, bottomRadius: 0.08, height: 0.14), materials: [SimpleMaterial(color: .green, isMetallic: false)])
            cone.position = [0.0, 0.10, 0]

            let torus = ModelEntity(mesh: .generateTorus(ringRadius: 0.09, pipeRadius: 0.03), materials: [SimpleMaterial(color: .orange, isMetallic: false)])
            torus.position = [0.16, -0.05, 0]

            let capsule = ModelEntity(mesh: .generateCapsule(height: 0.16, radius: 0.05), materials: [SimpleMaterial(color: .purple, isMetallic: false)])
            capsule.position = [0.32, 0.10, 0]

            origin.addChild(sphere)
            origin.addChild(box)
            origin.addChild(cone)
            origin.addChild(torus)
            origin.addChild(capsule)

            content.add(origin)
        }
    }
}

#Preview {
    ImmersiveView()
}
