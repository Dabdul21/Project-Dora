//import SwiftUI
//
//struct stress: View {
//    @State private var showSheet = false
//
//    var body: some View {
//        Button("Show Sheet") {
//            showSheet.toggle()
//        }
//        .sheet(isPresented: $showSheet) {
//            SheetView() // Use the custom sheet content here
//        }
//    }
//}
//
//struct SheetView: View {
//    var body: some View {
//        ZStack {
//            // Apply the thin material effect
//            Color.clear
//                .background(.thinMaterial)
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Text("Settings")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding()
//            }
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//    }
//}
//
//@main
//struct MyApp: App {
//    var body: some Scene {
//        WindowGroup {
//            stress()
//        }
//    }
//}
//
//#Preview {
//    stress()
//}
