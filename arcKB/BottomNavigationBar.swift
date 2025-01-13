import SwiftUI

struct BottomNavigationBar: View {
    @State private var selectedTab: Tab = .home

    enum Tab {
        case home, settings, profile, help
    }

    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                selectedTab = .home
            }) {
                VStack {
                    Image(systemName: "house")
                    Text("Home")
                }
            }
            .foregroundColor(selectedTab == .home ? .blue : .gray)
            Spacer()
            Button(action: {
                selectedTab = .settings
            }) {
                VStack {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            }
            .foregroundColor(selectedTab == .settings ? .blue : .gray)
            Spacer()
            Button(action: {
                selectedTab = .profile
            }) {
                VStack {
                    Image(systemName: "person")
                    Text("Profile")
                }
            }
            .foregroundColor(selectedTab == .profile ? .blue : .gray)
            Spacer()
            Button(action: {
                selectedTab = .help
            }) {
                VStack {
                    Image(systemName: "questionmark.circle")
                    Text("Help")
                }
            }
            .foregroundColor(selectedTab == .help ? .blue : .gray)
            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    BottomNavigationBar()
}
