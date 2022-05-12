//
//  Activity.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-10.
//

import Foundation
import SwiftUI

//struct Accomplishment {
//    let id: Int
//    let name: String
//    let icon: Image
//    let description: String
//    let activity: Activity
//    let nextSteps: [Accomplishment]
//}


let waterSkiing = Activity(
    id: 1,
    name: "Water Skiing",
    description: """
    The basic sport of water skiing.
    """
)

let jumpSkiing = Activity(
    id: 2,
    name: "Water Ski Jumping",
    description: """
    Hitting a water ski ramp!
    """
)

let slalomSkiing = Activity(
    id: 3,
    name: "Slalom Skiing",
    description: """
    Water skiing on one ski!
    """
)

let triedIt_slalomSkiing = Accomplishment(
    id: 7,
    name: "Tried It!",
    description: """
    Giving it a first try - getting up or not!
    """,
    activity: slalomSkiing,
    nextSteps: []
)

let triedIt_jumpSkiing = Accomplishment(
    id: 6,
    name: "Tried It!",
    description: """
    Giving it a first try - landing it or not!
    """,
    activity: jumpSkiing,
    nextSteps: []
)




let dropASki_waterSkiing = Accomplishment(
    id: 5,
    name: "Drop a Ski!",
    description: """
    Successfully dropped a water ski and stayed up!
    """,
    activity: waterSkiing,
    nextSteps: [triedIt_jumpSkiing, triedIt_slalomSkiing]
)

let catchAir_waterSkiing = Accomplishment(
    id: 4,
    name: "Catch Air!",
    description: """
    Did a jump off the wake!
    """,
    activity: waterSkiing,
    nextSteps: [dropASki_waterSkiing, triedIt_jumpSkiing]
)

let leaveTheWake_waterSkiing = Accomplishment(
    id: 3,
    name: "Leave the wake!",
    description: """
    Get outside of the wake!
    """,
    activity: waterSkiing,
    nextSteps: [catchAir_waterSkiing]
)


let gotUp_waterSkiing = Accomplishment(
    id: 2,
    name: "Got up!",
    description: """
    Successfully stood up on the skis!
    """,
    activity: waterSkiing,
    nextSteps: [leaveTheWake_waterSkiing]
)


let triedIt_waterSkiing = Accomplishment(
    id: 1,
    name: "Trying It!",
    description: """
    Giving it a first try - successful or not.
    """,
    activity: waterSkiing,
    nextSteps: [gotUp_waterSkiing]
)

