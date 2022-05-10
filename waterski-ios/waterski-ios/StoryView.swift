//
//  StoryView.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-09.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack{
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            ScrollView{
                Text(information.story)
                    .font(.body)
                    .padding()
            }
        }.padding([.top, .bottom], 50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
