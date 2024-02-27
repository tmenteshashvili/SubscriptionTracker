

import SwiftUI

struct SignUpView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                VStack {
                    LogoView()
                    
                }
                .offset(y: -350)
                
                VStack(alignment: .leading, spacing: 25.0) {
                    
                    EmptyWithBorderButton(textName: "E-mail address", foregColor: Color("grey50"))
                    
                    
                    EmptyWithBorderButton(textName: "Password", foregColor: Color("grey50"))

                    
                HStack {
                    Divider()
                        .frame(width: 80, height: 4)
                        .overlay(Color("grey70"))
                    
                    
                    Divider()
                        .frame(width: 80, height: 4)
                        .overlay(Color("grey70"))
                    Divider()
                        .frame(width: 80, height: 4)
                        .overlay(Color("grey70"))
                    Divider()
                        .frame(width: 80, height: 4)
                        .overlay(Color("grey70"))
                    
                }
                .offset(x: 10)
                    
                Text("Use 8 or more characters with a mix of letters, numbers & symbols.")
                    .font(.footnote)
                    .foregroundStyle(Color("grey50"))
                    .offset(x: 10)

   
                    StartButton(titel: "Get started, it's free!", backgroundColor: Color("buttonColor"))
                        .shadow(color: .orange, radius: 3)
                        .offset(y: 50)
                    


            }
                .offset(y: -40)
                .padding()
                
                VStack(spacing: 20.0) {
                    Text("Do you have already an account?")
                        .foregroundStyle(.white)
                    
                    StartButton(titel: "Sign up", backgroundColor: Color("button2Color"))
                        .shadow(color: .gray, radius: 3)

                    
                }
                .offset(y: 320)
                .padding()

                
            }
        }
    }
}

#Preview {
    SignUpView()
}
