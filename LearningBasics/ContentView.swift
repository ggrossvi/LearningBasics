//
//  ContentView.swift
//  LearningBasics
//
//  Created by Gloria Villa on 2/29/24.
// Questions can I rename root package without everything going wonky
// what does \.self do

import SwiftUI

struct ContentView: View {
    private var people: [String] = ["Percy", "Coco", "Lizzy", "Pia"].reversed()
    
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(people, id: \.self) { person in
                    CardView(person: person)
                    
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
