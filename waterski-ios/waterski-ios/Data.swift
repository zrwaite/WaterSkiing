//
//  Data.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-09.
//

import Foundation
import SwiftUI

struct Info {
    let image: String
    let name: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let information = Info(
    image: "BigBgZac",
    name: "Zac Waite",
    story: "A whole bunch of text, more text. A lot of information that can't all be processed on a single line in SwiftUI, because mobile, nay not even desktop can handle this content. More words, lets see how fast I can type. Its so cold outside. I'm alone, I'm alright. Its' so cold outside. I'm alone I'm alright. It's so cold outside. I'm alone I'm alright.",
    hobbies: [
        "bicycle",
        "ticket.fill",
        "book.fill"
    ],
    foods: [
        "Rice",
        "OJ",
        "Toads"
    ],
    colors: [
        Color.green,
        Color.blue,
        Color.yellow
    ],
    funFacts: [
        "I can do a backflip",
        "I can waterski",
        "I have a 3d printer",
        "My girlfriend is amazing"
    ]
)
