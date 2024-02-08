

import SwiftUI

struct TextWithImageButton: View {
    var imageName: String
    var title: String
    var background2Color: Color
    var foregColor: Color

    
    var body: some View {
        
        Button{
            // action will be here
            
        } label: {
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
                Text(title)
            }
            .foregroundColor(foregColor)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, minHeight: 52)
            .background(background2Color)
            .cornerRadius(25)

            
        }
    }
}

#Preview {
    TextWithImageButton(imageName: "Google", title: "Sign up with Google", background2Color: Color("button4"), foregColor: .black)
}
