//
//  ContentView.swift
//  FlashCardApp
//
//  Created by gabi brown on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Text("What's \"Powerhouse\" of a cell?")
                .font(.largeTitle)
            
            Button(action: {
                
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
            .buttonStyle(.bordered)
            
            Text("Mitochondria")
                 .font(.title)
            
            Button(action: {
                
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
            .buttonStyle(.bordered)

            
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
