

import SwiftUI

struct StartButton: View {
    var titel: String
    var backgroundColor: Color
  
    var body: some View {
            
                
                Text(titel)
                    .font(.title3)
                    .foregroundColor(.white)
                    .shadow(radius: 0.9)
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .background(backgroundColor)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            
        }
    }


#Preview {
    StartButton(titel: "Get Started", backgroundColor: Color("buttonColor"))
}
