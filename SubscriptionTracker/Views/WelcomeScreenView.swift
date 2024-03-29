
import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                VStack {
                    LogoView()
                    
                }
                .offset(y: -350)
            
                    Image("blur")
                    
                    Image("2image")
                        .offset(x: 150, y: 110)
                
                    Image("NYS")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: -40)
                    
                    Image("Image")
                        .offset(x: -170, y: -130)

                
                    Spacer()
                
                VStack(alignment: .center, spacing: 20.0) {
                    NavigationLink {
                        Register1View()
                    } label: {
                        StartButton(titel: "Get Started!", backgroundColor: Color("buttonColor"))
                            .shadow(color: .orange, radius: 2)

                    }
                

                }
                .offset(y: 320)
                .padding()

            }
        }
    }
}

#Preview {
    WelcomeScreenView()
}
