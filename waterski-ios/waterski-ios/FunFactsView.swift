//
//  FunFacts.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-10.
//

import SwiftUI

struct FunFactsView: View {
    @State private var funFact = ""
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            Button("Show Random Fact") {
                var newFact = ""
                while (newFact==funFact || newFact=="") {
                    newFact = information.funFacts.randomElement()!
                }
                funFact = newFact
            }.background(Color.blue)
        }.padding()
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
