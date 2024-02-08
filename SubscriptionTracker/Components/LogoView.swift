

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Subscription tracker".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    LogoView()
}
