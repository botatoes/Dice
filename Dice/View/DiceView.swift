//
//  DiceView.swift
//  Dice
//
//  Created by Bo-ying Fu on 1/21/20.
//  Copyright © 2020 botatoes. All rights reserved.
//

import SwiftUI

struct DiceView: View {
    
    var dice : Di
    
    var body: some View {
        VStack {
            Text("\(dice.side)")
        }
    }
}

struct DiceView_Previews: PreviewProvider {
        
    static var previews: some View {
        DiceView(dice: Di(side: 4))
    }
}
