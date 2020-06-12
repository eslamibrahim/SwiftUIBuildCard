//
//  CardModel.swift
//  SwiftUITest
//
//  Created by islam on 6/9/20.
//  Copyright © 2020 islam. All rights reserved.
//

import SwiftUI

struct CardModel : Identifiable {
    var id = UUID()
    var name : String
    var title : String
    var subTitle : String
    var imageName : String
    var alertMessage : String
    var callBackActionButton : String
    var gradiantColors : [Color]
}

let cards : [CardModel] =
    [
        CardModel(name: "Mohamed", title: "SwiftUI", subTitle: "Better apps . less code", imageName: "developer-no1", alertMessage: "Let's create an awesome iOS card app UI/UX design with SwiftUI in Xcode", callBackActionButton: "Design", gradiantColors: [Color("Color01"),Color("Color02")]),
        CardModel(name: "Islam Awaad", title: "IOS 13", subTitle: "New technology.", imageName: "developer-no2", alertMessage: "Get ready for iOS 13 and learn about the new Dark Mode.", callBackActionButton: "Learn", gradiantColors: [Color("Color03"),Color("Color04")]),
        CardModel(name: "Hassan", title: "Swift", subTitle: "Everyone can code.", imageName: "developer-no3", alertMessage: "Let's create an awesome iOS card app UI/UX design with SwiftUI in Xcode", callBackActionButton: "Learn", gradiantColors: [Color("Color05"),Color("Color06")]),
        CardModel(name: "Emad", title: "IOS 13", subTitle: "Bring Your iPad App to Mac.", imageName: "developer-no4", alertMessage: "Let's create an awesome iOS card app UI/UX design with SwiftUI in Xcode", callBackActionButton: "Learn", gradiantColors: [Color("Color07"),Color("Color08")]),
        CardModel(name: "Mona", title: "IOS 13", subTitle: "Engaging way to learn coding.", imageName: "developer-no5", alertMessage: "Let's create an awesome iOS card app UI/UX design with SwiftUI in Xcode", callBackActionButton: "Learn", gradiantColors: [Color("Color09"),Color("Color10")])
]
