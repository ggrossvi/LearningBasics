//
//  CardView.swift
//  LearningBasics
//
//  Created by Gloria Villa on 2/29/24.
//  How do I put a picture in

import SwiftUI

struct CardView: View {
    //struct initializer(constructor) with property name created for cardview
    var dog: String
    @State private var offset = CGSize.zero
    @State private var color:  Color = .orange
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 420)
                .border(.white,width: 6.0)
                .cornerRadius(4)
                .foregroundColor(color.opacity(0.9))
                .shadow(radius: 4)
            
            VStack{
                Image("dog")
                HStack {
                    Text(dog)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
            }
        }
        //
        .offset(x: offset.width, y: offset.height * 0.4)
        // makes it more realitic when you swipe - card only slightly rotates
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    // where card was draged
                    offset = gesture.translation
                    // what happens when you stop dragging
                }
                .onEnded { _ in
                    
                }
        )
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(dog:  "Percy")
    }
}
