import SwiftUI

struct VisualDesign: View {
    var body: some View {
        VStack {
            Text("Welcome to arcKB")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("PrimaryColor"))
                .padding(.top, 50)

            Spacer()

            HStack {
                Button(action: {
                    // Navigate to Home
                }) {
                    VStack {
                        Image(systemName: "house.fill")
                            .font(.title)
                            .foregroundColor(Color("PrimaryColor"))
                        Text("Home")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
                .background(Color("ButtonBackground"))
                .cornerRadius(10)
                .shadow(radius: 5)

                Button(action: {
                    // Navigate to Settings
                }) {
                    VStack {
                        Image(systemName: "gearshape.fill")
                            .font(.title)
                            .foregroundColor(Color("PrimaryColor"))
                        Text("Settings")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
                .background(Color("ButtonBackground"))
                .cornerRadius(10)
                .shadow(radius: 5)

                Button(action: {
                    // Navigate to Profile
                }) {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.title)
                            .foregroundColor(Color("PrimaryColor"))
                        Text("Profile")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
                .background(Color("ButtonBackground"))
                .cornerRadius(10)
                .shadow(radius: 5)

                Button(action: {
                    // Navigate to Help
                }) {
                    VStack {
                        Image(systemName: "questionmark.circle.fill")
                            .font(.title)
                            .foregroundColor(Color("PrimaryColor"))
                        Text("Help")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
                .background(Color("ButtonBackground"))
                .cornerRadius(10)
                .shadow(radius: 5)
            }
            .padding(.horizontal, 20)

            Spacer()

            Text("Enjoy your experience!")
                .font(.title2)
                .foregroundColor(Color("SecondaryColor"))
                .padding(.bottom, 50)
        }
        .background(Color("BackgroundColor"))
        .edgesIgnoringSafeArea(.all)
        .animation(.easeInOut)
    }
}

#Preview {
    VisualDesign()
}
