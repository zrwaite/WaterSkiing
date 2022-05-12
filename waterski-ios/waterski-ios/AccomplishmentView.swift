//
//  AccomplishmentView.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-11.
//

import SwiftUI

struct AccomplishmentView: View {
    let accomplishment: Accomplishment
    var body: some View {
        VStack{
            VStack{
                Text(accomplishment.name)
                    .font(.title)
                Text("- " + accomplishment.activity.name)
                    .font(.subheadline)
            }.padding()
            
            Text(accomplishment.description)
                .padding()
            Text("Next Steps:")
                .font(.title3)
            ForEach(accomplishment.nextSteps, id: \Accomplishment.id) { nextStep in
                NavigationLink(destination: AccomplishmentView(accomplishment: nextStep)) {
                    Text(nextStep.name + " - " + nextStep.activity.name)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .navigationTitle(accomplishment.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AccomplishmentView_Previews: PreviewProvider {
    static var previews: some View {
        AccomplishmentView(accomplishment: triedIt_waterSkiing)
    }
}
