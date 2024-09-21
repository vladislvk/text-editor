import SwiftUI

struct CustomButtonView: View {
    
    var title:String
    var color:Color
    
    var body: some View {
        Text(title)
            .padding(10)
            .font(.title)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    CustomButtonView(title: "Tap me", color: .red)
}
