import SwiftUI

struct WelcomeView: View {
    @State private var navigateToOption1 = false
    @State private var navigateToOption2 = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .foregroundColor(Color(UIColor.label))
                    .padding(.top, 50)

                Spacer()

                HStack {
                    NavigationLink(destination: EmptyView(), isActive: $navigateToOption1) {
                        Button(action: {
                            navigateToOption1 = true
                        }) {
                            Text("Option 1")
                                .foregroundColor(Color(UIColor.label))
                                .padding()
                                .background(Color(UIColor.systemBackground))
                                .cornerRadius(10)
                        }
                    }

                    NavigationLink(destination: EmptyView(), isActive: $navigateToOption2) {
                        Button(action: {
                            navigateToOption2 = true
                        }) {
                            Text("Option 2")
                                .foregroundColor(Color(UIColor.label))
                                .padding()
                                .background(Color(UIColor.systemBackground))
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal, 20)

                Spacer()

                HStack {
                    Button(action: {
                        // Add back button action here
                    }) {
                        Text("Back")
                            .foregroundColor(Color(UIColor.label))
                            .padding()
                            .background(Color(UIColor.systemBackground))
                            .cornerRadius(10)
                    }
                    .padding(.leading, 20)

                    Spacer()
                }
                .padding(.bottom, 20)
            }
            .background(Color(UIColor.systemBackground))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    WelcomeView()
}
