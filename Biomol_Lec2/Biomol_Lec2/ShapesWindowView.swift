import SwiftUI

struct ShapesWindowView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Five Shapes (Window)")
                .font(.title2)
                .bold()

            HStack(spacing: 16) {
                Circle()
                    .fill(.red)
                    .frame(width: 80, height: 80)

                Rectangle()
                    .fill(.blue)
                    .frame(width: 80, height: 80)

                RoundedRectangle(cornerRadius: 16)
                    .fill(.green)
                    .frame(width: 80, height: 80)

                Capsule()
                    .fill(.orange)
                    .frame(width: 80, height: 80)

                Ellipse()
                    .fill(.purple)
                    .frame(width: 80, height: 80)
            }
        }
        .padding()
    }
}

#Preview {
    ShapesWindowView()
}
