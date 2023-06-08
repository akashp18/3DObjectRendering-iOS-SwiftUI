//
//  Model.swift
//  SwiftUI3DModelDemo
//
//  Created by Akash on 2023-06-05.
//

import Foundation

struct Gadgets:Identifiable,Hashable{
    var id:Int
    var name:String
    var modelName:String
}


var gadgetList = [
    Gadgets(id: 1, name: "USB Stick", modelName: "USB_Stick.usdz"),
    Gadgets(id: 2, name: "Futuristic Computer", modelName: "Futuristic_Computer.usdz"),
    Gadgets(id: 3, name: "Hoverboard", modelName: "Hoverboard.usdz"),
    Gadgets(id: 4, name: "Laptop", modelName: "laptop.usdz"),
    Gadgets(id: 5, name: "Music Player", modelName: "musicPlayer.usdz"),
    Gadgets(id: 6, name: "Radio", modelName: "Radio.usdz"),
    Gadgets(id: 7, name: "Camera", modelName: "Camera.usdz"),
]
