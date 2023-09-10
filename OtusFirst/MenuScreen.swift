import SwiftUI


final class SettingsListViewModel: ObservableObject {
    
    @Published private(set) var settings = [
        "General",
        "About",
        "Network",
        "Privacy"
    ]
}

struct SettingsScreen: View {
    
    @StateObject var settingsListVM = SettingsListViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Наличие Листа
    var body: some View {
        NavigationView {
            VStack {
                List(settingsListVM.settings, id: \.self) { setting in
                    NavigationLink (
                        destination: Text(
                            "This is a \(setting) settings"
                        )
                    ) {
                        HStack {
                            Text(setting)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
