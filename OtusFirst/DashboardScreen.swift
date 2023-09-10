import SwiftUI

struct UIKitRepresentView: UIViewRepresentable {
    func updateUIView(_ uiView: UIKitView, context: Context) {
    }
    
    
    func makeUIView(context: Context) -> UIKitView {
        UIKitView()
    }
}

struct DashboardScreen: View {
    @Binding var tab: Int
    
    // MARK: - Наличие UIViewRepresentable
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World! Dash")
            Spacer()
            UIKitRepresentView()
                .padding(50)
            Spacer()
            Button("Navigation") {
                tab = 1
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }

    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen(tab: .constant(0))
    }
}
