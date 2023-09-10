import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        // MARK: - Наличие Табов
        TabView(selection: $selectedTab) {
            Group {
        // MARK: - Наличие навигации из первого таба(Не уверен в задании)
                DashboardScreen(tab: $selectedTab)
                    .tag(0)
                    .tabItem {
                        Label("Dashboard", systemImage: "house")
                    }
                
                SettingsScreen()
                    .tag(1)
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
