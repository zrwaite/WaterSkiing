//
//  ContentView.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "person")
                }
            StoryView()
                .tabItem{
                    Label("Story", systemImage: "book")
                }
            AccomplishmentsView()
                .tabItem{
                    Label("Favourites", systemImage: "star")
                }
            FunFactsView()
                .tabItem{
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
