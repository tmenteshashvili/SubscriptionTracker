
import SwiftUI

struct EmptyWithBorderButton: View {
    @State  var email = ""
    @State  var password = ""
    @State  var textName:  String
    @State var foregColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(textName)
                .font(.caption)
                .foregroundStyle(foregColor)
            
            TextField("", text: $email)
                .font(.title3)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 52)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color("grey70")))
        }
        
    }
}

#Preview {
    EmptyWithBorderButton(textName: "E-mail address", foregColor: Color("grey50"))
}
