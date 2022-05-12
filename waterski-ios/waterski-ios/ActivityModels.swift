//
//  ActivityModels.swift
//  waterski-ios
//
//  Created by Zachary Waite on 2022-05-10.
//

import Foundation
import SwiftUI

struct Activity {
    let id: Int
    let name: String
//    let icon: Image
    let description: String
}

struct Accomplishment {
    let id: Int
    let name: String
//    let icon: Image
    let description: String
    let activity: Activity
    let nextSteps: [Accomplishment]
}
