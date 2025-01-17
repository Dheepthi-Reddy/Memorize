//
//  ContentView.swift
//  Memorize
//
//  Created by Dheepthi Reddy Vangeti on 10/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{ //Horizontal stacking
            
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView()
            
        }
        .padding()
        .foregroundStyle(.orange)
        
    }
}


struct CardView: View{
    var isFaceUp: Bool = false
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else{
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
    
}



#Preview {
    ContentView()
}
