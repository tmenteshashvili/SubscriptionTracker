
import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            VStack {
                LogoView()
                
            }
            .offset(y: -300)
        
                Image("blur")
                
                Image("2image")
                    .offset(x: 150, y: 150)
                Image("NYS")
                
                Image("Image")
                    .offset(x: -170, y: -90)
            
                Spacer()
            
            VStack(spacing: 20.0) {
                StartButton(titel: "Get Started!", backgroundColor: Color("buttonColor"))
                    .shadow(color: .orange, radius: 1)
                
                StartButton(titel: "I have an account", backgroundColor: Color("button2Color"))
                    .shadow(color: .brown, radius: 1)
            }
            .offset(y: 300)
            .padding()

        }
    }
}

#Preview {
    WelcomeScreenView()
}
