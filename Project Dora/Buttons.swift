import SwiftUI

struct Buttons: View {
    let heartAction: () -> Void
    let gearAction: () -> Void

    var body: some View {
        HStack {
            Button(action: heartAction) {
                Image(systemName: "heart.fill")
            }

            Button(action: gearAction) {
                Image(systemName: "gearshape.fill")
            }
        }
    }
}
