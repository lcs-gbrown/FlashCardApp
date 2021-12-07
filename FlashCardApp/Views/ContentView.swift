//
//  ContentView.swift
//  FlashCardApp
//
//  Created by gabi brown on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State  var currentCard: Card = listOfCards.randomElement()!
    
    //This controls whether the answer is visible
    @State var isAnswerShowing = false
    
    //MARK: Commputed properties
    var body: some View {
        VStack(spacing: 25) {
            
            //Output
            Text(currentCard.question)
                .font(.largeTitle)
            //Input
            Button(action: {
                withAnimation {
                    isAnswerShowing = true
                }
                currentCard = listOfCards.randomElement()!
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            //Output
            Text(currentCard.answer)
                .font(.title)
                //          condition      true   false
                .opacity(isAnswerShowing ? 1.0 : 0.0 )
            
            //Input
            Button(action: {
                
                //Hide the answer
                isAnswerShowing = false
                
                //Pick a new card
                print("Button was pressed")
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
                //          condition      true   false
                .opacity(isAnswerShowing ? 1.0 : 0.0 )
            
            
            Spacer()
        }
        .navigationTitle("Flash Cards")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
