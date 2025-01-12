import SwiftUI

struct SplatView: View {
    var body: some View {
        VStack {
            Text("Splat")
                .font(.largeTitle)
                .foregroundColor(Color(UIColor.label))
                .padding()
                .background(Color(UIColor.systemBackground))
                .cornerRadius(10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SplatView()
}
