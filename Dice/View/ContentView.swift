//
//  ContentView.swift
//  Dice
//
//  Created by Bo-ying Fu on 1/21/20.
//  Copyright © 2020 botatoes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var dice = Di(side: 4)
    @State private var side = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("How many sides?")
                TextField("#", text: $side)
                    .keyboardType(.numberPad)
            }
            .padding()
                
            
            DiceView(dice: self.dice)
            Button("Roll Dice") {
                self.dice.side = Int.random(in: 1 ..< Int(self.side)!+1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
