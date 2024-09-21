import SwiftUI

struct ContentView: View {
    @State var userText=""
    
    var body: some View {
        VStack(content: {
            Text(userText)
            TextField("Enter text",text: $userText)
                .padding(20)
            
            HStack(content: {
                CustomButtonView(title: "click", color: .red)
                CustomButtonView(title: "click", color: .green)
                CustomButtonView(title: "click", color: .blue)
            })
        })
    }
}

#Preview {
    ContentView()
}
