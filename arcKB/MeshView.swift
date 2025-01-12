import SwiftUI
import RealityKit
import ARKit

struct MeshView: View {
    @State private var isBackCameraSelected = true
    @State private var isCameraActive = false

    var body: some View {
        VStack {
            Text("Mesh")
                .font(.largeTitle)
                .foregroundColor(Color(UIColor.label))
                .padding()
                .background(Color(UIColor.systemBackground))
                .cornerRadius(10)

            HStack {
                Button(action: {
                    isBackCameraSelected = true
                    isCameraActive = true
                }) {
                    Text("Back Camera")
                        .foregroundColor(Color(UIColor.label))
                        .padding()
                        .background(Color(UIColor.systemBackground))
                        .cornerRadius(10)
                }

                Button(action: {
                    isBackCameraSelected = false
                    isCameraActive = true
                }) {
                    Text("Front Camera")
                        .foregroundColor(Color(UIColor.label))
                        .padding()
                        .background(Color(UIColor.systemBackground))
                        .cornerRadius(10)
                }
            }
            .padding()

            if isCameraActive {
                RealityView { content in
                    let arView = ARView(frame: .zero)
                    let config = ARWorldTrackingConfiguration()
                    config.planeDetection = [.horizontal, .vertical]
                    config.environmentTexturing = .automatic
                    if ARWorldTrackingConfiguration.supportsFrameSemantics(.sceneDepth) {
                        config.frameSemantics.insert(.sceneDepth)
                    }
                    arView.session.run(config)

                    content.addSubview(arView)
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

#Preview {
    MeshView()
}
