import SwiftUI

struct ScreenThree: View {
    @State private var showDropdown = false

    var body: some View {
        NavigationStack {
            ZStack {
                CloudBackground() // Use the custom background

                // Add other components here
            }
            .fullScreenCover(isPresented: $showDropdown) {
                DropdownView() // Use another reusable view for the dropdown
            }
        }
    }
}

// Reusable dropdown view
struct DropdownView: View {
    var body: some View {
        ZStack {
            CloudBackground() // Use the same custom background

            // Additional content for the dropdown
        }
    }
}

#Preview {
    ScreenThree()
}
