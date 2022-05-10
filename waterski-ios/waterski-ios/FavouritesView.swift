//
//  FavouritesView.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-10.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        VStack{
            Text("Favourites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            Text("Hobbies")
                .font(.title2)
            HStack{
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                }.padding()
            }.padding()
            
            Text("Foods")
                .font(.title2)
            HStack(spacing: 60) {
                ForEach(information.foods, id: \.self) {food in
                    Text(food)
                        .font(.system(size: 24))
                }
            }.padding()
            
            Text("Favourite Colours")
                .font(.title2)
            HStack(spacing: 30){
                ForEach(information.colors, id: \.self) {color in
                    color.frame(width: 70, height: 70)
                        .cornerRadius(10)
                }
            }.padding()
        }
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
