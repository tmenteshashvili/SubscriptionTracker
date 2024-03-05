
import SwiftUI

struct SignInView: View {
    @State private var isOn = false

    
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
                    
                    EmptyWithBorderButton(textName: "Login", foregColor: Color("grey50"))
                    
                    
                    EmptyWithBorderButton(textName: "Password", foregColor: Color("grey50"))
                    
                    HStack {
                        Toggle(isOn: $isOn) {
                            Text("Remember me")
                        }
                        .toggleStyle(iOSCheckboxToggleStyle())
                        Spacer()
                        
                        Text("Forgot  password")
                    }
                    .foregroundStyle(Color("grey50"))
                    
                   
                        StartButton(titel: "Sign In", backgroundColor: Color("buttonColor"))
                            .shadow(color: .orange, radius: 2)
                            .offset(y: 50)
     

                }
                .offset(y: -40)
                .padding()
                
                NavigationLink {
                    MainView()
                } label: {
                    VStack(spacing: 20.0) {
                        Text("If you don't have an account yet?")
                            .foregroundStyle(.white)
                        
                        StartButton(titel: "Sign In", backgroundColor: Color("button2Color"))
                            .shadow(color: .gray, radius: 1.5)
                        
                    }
                }
                .offset(y: 320)
                .padding()

            }
        }
    }
    
    struct iOSCheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            // 1
            Button(action: {
                
                // 2
                configuration.isOn.toggle()
                
            }, label: {
                HStack {
                    // 3
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                        .font(.title)
                        .foregroundStyle(Color("grey70"))
                    
                    configuration.label
                }
            })
        }
    }
    
}
    
    #Preview {
        SignInView()
    }
