import SwiftUI
import RealityKit

// FullWidthContainerView provides a navigation bar with home and debug buttons
struct FullWidthContainerView: View {
    @Environment(\.presentationMode) var presentationMode
    var isHomePage: Bool

    var body: some View {
        HStack {
            if isHomePage {
                Button(action: {
                    // Navigate to home page
                }) {
                    Image(systemName: "house")
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .padding()
                        .background(Color(UIColor.systemBackground))
                        .cornerRadius(10)
                }
            } else {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .foregroundColor(Color(UIColor.label))
                        .padding()
                        .background(Color(UIColor.systemBackground))
                        .cornerRadius(10)
                }
            }

            Spacer()

            Button(action: {
                // Debug action
            }) {
                Text("Debug")
                    .foregroundColor(Color(UIColor.label))
                    .padding()
                    .background(Color(UIColor.systemBackground))
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color(UIColor.systemBackground))
    }
}
