import SwiftUI

struct ContentView: View {
    @State var userText=""
    @State var capMode = 1

    var body: some View {
        VStack(content: {
            VStack(content: {
                if capMode == 1{
                    Text(userText.uppercased())
                    
                }
                if capMode == 2{
                    Text(userText.capitalized)
                    
                }
                if capMode == 3{
                    Text(userText.lowercased())
                    
                }
            })
            Spacer()
            TextField("Enter text",text: $userText)
                .padding(20)
            VStack(content: {
                Button(action: {
                    let pasteBoard = UIPasteboard.general
                    if capMode == 1{
                        pasteBoard.string = userText.uppercased()
                        
                    }
                    if capMode == 2{
                        pasteBoard.string = userText.capitalized
                        
                    }
                    if capMode == 3{
                        pasteBoard.string = userText.lowercased()
                        
                    }
                }, label: {
                    CustomButtonView(title: "copy", color: .orange)
                        
                })
                HStack(content: {
                    Button(action: {
                        capMode = 1
                    }, label: {
                        CustomButtonView(title: "click", color: .red)
                    })
                    Button(action: {
                        capMode = 2
                    }, label: {
                        CustomButtonView(title: "click", color: .green)
                    })
                    Button(action: {
                        capMode = 3
                    }, label: {
                        CustomButtonView(title: "click", color: .blue)
                    })
                })
            })
        })
    }
}

#Preview {
    ContentView()
}
