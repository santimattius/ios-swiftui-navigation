//
//  Data.swift
//  SwiftUI Navigation
//
//  Created by Santiago Mattiauda on 8/6/22.
//

import Foundation

struct CodeSmell: Equatable, Hashable {
    let id:UUID = UUID()
    let name: String
    let category:String
}

struct CodeSmellCategory : Equatable,Hashable{
    let id:UUID = UUID()
    let name: String
    let deeplink:String
    
    static let bloaters = CodeSmellCategory(name: "Bloaters",deeplink: "bloaters")
    static let ooAbusers = CodeSmellCategory(name: "Object-Orientation Abusers",deeplink: "object-orientation-abusers")
    static let changePreventers = CodeSmellCategory(name: "Change Preventers",deeplink: "change-Preventers")
    static let dispensables = CodeSmellCategory(name: "Dispensables",deeplink: "dispensables")
    static let couplers = CodeSmellCategory(name: "Couplers",deeplink: "couplers")
    
}


struct DesignPattern: Equatable, Hashable {
    let id:UUID = UUID()
    let name:String
    let category:String
}

struct DesignPatternCategory : Equatable,Hashable{
    let id:UUID = UUID()
    let name: String
    let deeplink:String
    
    static let creational = DesignPatternCategory(name: "Creational",deeplink: "creational")
    static let structural = DesignPatternCategory(name: "Structural",deeplink: "structural")
    static let behavioral = DesignPatternCategory(name: "Behavioral", deeplink: "behavioral")
  
    
}
