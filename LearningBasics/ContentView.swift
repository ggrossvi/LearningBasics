//
//  ContentView.swift
//  LearningBasics
//
//  Created by Gloria Villa on 2/29/24.


import SwiftUI

struct ContentView: View {
    private var dogs: [String] = ["Percy", "Coco", "Lizzy", "Pia"].reversed()
    
    
    var body: some View {
        VStack {
            ZStack {
                // array and for each element do something. Takes one person and draws the card view. dogs is the array then a block - param dog / Element card view for each element - *** id: how differentiate one from another
                ForEach(dogs, id: \.self) { dog in
                    CardView(dog: dog)
                    
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
