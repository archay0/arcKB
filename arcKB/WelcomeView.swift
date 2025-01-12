import SwiftUI
import RealityKit
import SplatView
import MeshView
import FullWidthContainerView

// WelcomeView is the main view that provides navigation to SplatView and MeshView
struct WelcomeView: View {
    @State private var navigateToSplat = false
    @State private var navigateToMesh = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .foregroundColor(Color(UIColor.label))
                    .padding(.top, 50)

                Spacer()

                HStack {
                    NavigationLink(destination: SplatView(), isActive: $navigateToSplat) {
                        Button(action: {
                            navigateToSplat = true
                        }) {
                            VStack {
                                Image(systemName: "paintbrush")
                                    .font(.largeTitle)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Splat")
                                    .foregroundColor(Color(UIColor.label))
                                    .padding()
                                    .background(Color(UIColor.systemBackground))
                                    .cornerRadius(10)
                            }
                        }
                    }

                    NavigationLink(destination: MeshView(), isActive: $navigateToMesh) {
                        Button(action: {
                            navigateToMesh = true
                        }) {
                            VStack {
                                Image(systemName: "cube")
                                    .font(.largeTitle)
                                    .foregroundColor(Color(UIColor.label))
                                Text("Mesh")
                                    .foregroundColor(Color(UIColor.label))
                                    .padding()
                                    .background(Color(UIColor.systemBackground))
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
                .padding(.horizontal, 20)

                Spacer()

                FullWidthContainerView(isHomePage: true)
            }
            .background(Color(UIColor.systemBackground))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    WelcomeView()
}
