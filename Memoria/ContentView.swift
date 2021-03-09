//
//  ContentView.swift
//  Memoria
//
//  Created by Marlon Machado on 08/03/21.
//

import SwiftUI

struct ContentView: View {
    var nome = "Pedro"
    
    var body: some View {
        HStack(content: {
            CardView()
            CardView(isFaceUp: false)
            CardView()
                .onTapGesture(perform: {
                    print("Hello Tap: \(nome)")
                })
        })
        .padding()
        .foregroundColor(Color.purple)
    }
}

struct CardView: View {
    var isFaceUp = true
    
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 12)
                .stroke(lineWidth: 4)
                
            Text("🍉")
                .font(Font.headline)
            
            if !isFaceUp {
                RoundedRectangle(cornerRadius: 12)
            }

        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
