//
//  HomeView.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-09.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding()
            Text(information.name)
                .font(.title)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
