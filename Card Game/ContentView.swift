//
//  ContentView.swift
//  Card Game
//
//  Created by Aizaz on 04/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
    Stacks()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Stacks : View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card6"
    @State var playerScore = 0;
    @State var cpuScore = 0;
    
    
    var body : some View{
        
        ZStack{
            VStack{
                Spacer()
                Image("logo")
            Spacer()
                HStack{
                    Image(playerCard).padding(15)
                    Image(cpuCard).padding(15)
                }
                Spacer()
                
                HStack{
                    Button {
                        //random number
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        
                        playerCard = "card" + String (playerRand)
                        cpuCard = "card" + String(cpuRand)
                        
                        if playerRand>cpuRand {
                            
                            playerScore += 1
                        }
                        else {
                            cpuScore += 1
                        }
                        
                        
                    } label: {
                        Image("dealbutton")
                    }

                    
                }
                Spacer()
                HStack{
                    Text("Player 1")
                        .fontWeight(.bold)
                    Spacer()
                    Text("Player 2")
                        .fontWeight(.bold)
                    
                }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))

                HStack{
                    Text(String( playerScore))
                        .padding(.leading, 60)
                    Spacer()
                    Text(String (cpuScore))
                        .padding(.trailing, 60)
                        
                    
                }.font(.largeTitle)
                
                    Spacer()
            
            
            }
        }.background(Color.gray.ignoresSafeArea())
    }
    
}
