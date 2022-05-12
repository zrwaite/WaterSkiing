//
//  AccomplishmentsView.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-11.
//

import SwiftUI

struct AccomplishmentsView: View {
    var body: some View {
        NavigationView {
            AccomplishmentView(accomplishment: triedIt_waterSkiing)
        }
        .navigationViewStyle(.stack)
    }
}

struct AccomplishmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AccomplishmentsView()
    }
}
