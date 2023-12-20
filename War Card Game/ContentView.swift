import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String =  "back"
    @State var cpuCard =  "back"
    
    @State var playerScore = 0
    @State var cpuScore =  0
    
    var body: some View {
        ZStack{
            
            Image("background-plain")
            
            VStack(spacing: 50.0){
                
                Image("logo")
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Button(action: {
                    //handeling Click
                    deal()
                }, label: {
                    Image("button")
                })
                
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
            }
        }
    }
    
    func deal(){
        var playerRandomNum : Int = randomCard()
        playerCard = "card" + String(playerRandomNum)
                                     
        var cpuRandomNum : Int = randomCard()
        cpuCard = "card" + String(cpuRandomNum)
        
    
        
        if playerRandomNum > cpuRandomNum {
            playerScore += 1
        }else if playerRandomNum == cpuRandomNum {}
        else {
            cpuScore += 1
        }
        
    }
    
    func randomCard() -> Int{
        return Int.random(in: 2...14)
    }
}

#Preview {
    ContentView()
}
