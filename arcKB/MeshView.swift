import SwiftUI
import RealityKit

// MeshView displays a simple text "Mesh" with some styling
struct MeshView: View {
    var body: some View {
        Text("Mesh")
            .font(.largeTitle)
            .foregroundColor(Color(UIColor.label))
            .padding()
            .background(Color(UIColor.systemBackground))
            .cornerRadius(10)
    }
}

#Preview {
    MeshView()
}
