

import SwiftUI

struct Register1View: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                VStack {
                    LogoView()
                    
                }
                .offset(y: -350)
                

                
                VStack(spacing: 20.0) {
                    TextWithImageButton(imageName: "apple", title: "Sign up with Apple", background2Color: Color("button3"), foregColor: .white)
                        .shadow(color: .black, radius: 4)

                    
                    TextWithImageButton(imageName: "Google", title: "Sign up with Google", background2Color: Color("button4"), foregColor: .black)
                        .shadow(color: .white, radius: 4)

                    
                    TextWithImageButton(imageName: "Facebook", title: "Sign up with Facebook", background2Color: Color("button5"), foregColor: .white)
                        .shadow(color: .blue, radius: 4)

                    
                    
                    Text("or")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .padding(.top, 40)
                        .padding(.bottom, 40)
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        StartButton(titel: "Sign up with E-mail", backgroundColor: Color("button2Color"))
                            .shadow(color: .gray, radius: 3)
                    }
                   
                    
                    Text("By registering, you agree to our Terms of Use. Learn\n how we collect, use and share your data.")
                        .font(.footnote)
                        .foregroundStyle(.gray)

                    
                }
                .padding()
                .offset(y: 120)

                
            }
        }
        
    }
}

#Preview {
    Register1View()
}
