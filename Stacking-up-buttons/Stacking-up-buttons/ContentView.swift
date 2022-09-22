//
//  ContentView.swift
//  Stacking-up-buttons
//
//  Created by Bishowjit Ray on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Argentina","brazil","Nordic","pakistan"].shuffled()
    var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing:40){
                
                VStack{
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries [correctAnswer])
                        .foregroundColor(.white)
                }
                ForEach(0..<3){ number in
                    Button{
                        
                    }
                    label:{
                        Image(countries[number])
                            .renderingMode(.original)
                    }
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
