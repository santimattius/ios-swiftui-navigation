//
//  Data.swift
//  SwiftUI Navigation
//
//  Created by Santiago Mattiauda on 8/6/22.
//

import Foundation

struct DataProvider {
    static let codeSmellCategories = [
        CodeSmellCategory.bloaters,
        CodeSmellCategory.ooAbusers,
        CodeSmellCategory.changePreventers,
        CodeSmellCategory.dispensables,
        CodeSmellCategory.couplers,
    ]

    static let codeSmells = [
       CodeSmell(name: "Long Method", category: "Bloaters"),
       CodeSmell(name: "Large Class", category: "Bloaters"),
       CodeSmell(name: "Primitive Obsession", category: "Bloaters"),
       CodeSmell(name: "Long Parameter List", category: "Bloaters"),
       CodeSmell(name: "Data Clumps", category: "Bloaters"),
       CodeSmell(name: "Data Clumps", category: "Bloaters"),
       CodeSmell(name: "Alternative Classes with Different Interfaces", category: "Object-Orientation Abusers"),
       CodeSmell(name: "Refused Bequest", category: "Object-Orientation Abusers"),
       CodeSmell(name: "Switch Statements", category: "Object-Orientation Abusers"),
       CodeSmell(name: "Temporary Field", category: "Object-Orientation Abusers"),
       CodeSmell(name: "Divergent Change", category: "Change Preventers"),
       CodeSmell(name: "Parallel Inheritance Hierarchies", category: "Change Preventers"),
       CodeSmell(name: "Comments", category: "Dispensables"),
       CodeSmell(name: "Duplicate Code", category: "Dispensables"),
       CodeSmell(name: "Data Class", category: "Dispensables"),
       CodeSmell(name: "Dead Code", category: "Dispensables"),
       CodeSmell(name: "Lazy Class", category: "Dispensables"),
       CodeSmell(name: "Speculative Generality", category: "Dispensables"),
       CodeSmell(name: "Feature Envy", category: "Couplers"),
       CodeSmell(name: "Inappropriate Intimacy", category: "Couplers"),
       CodeSmell(name: "Incomplete Library Class", category: "Couplers"),
       CodeSmell(name: "Message Chains", category: "Couplers"),
       CodeSmell(name: "Middle Man", category: "Couplers")
    ]


    static let designPatterns = [
        DesignPattern(name: "Factory Method", category: "Creational"),
        DesignPattern(name: "Abstract Factory", category: "Creational"),
        DesignPattern(name: "Builder", category: "Creational"),
        DesignPattern(name: "Prototype", category: "Creational"),
        DesignPattern(name: "Singleton", category: "Creational"),
        DesignPattern(name: "Adapter", category: "Structural"),
        DesignPattern(name: "Bridge", category: "Structural"),
        DesignPattern(name: "Composite", category: "Structural"),
        DesignPattern(name: "Decorator", category: "Structural"),
        DesignPattern(name: "Facade", category: "Structural"),
        DesignPattern(name: "Flyweight", category: "Structural"),
        DesignPattern(name: "Proxy", category: "Structural"),
        DesignPattern(name: "Chain of Responsability", category: "Behavioral"),
        DesignPattern(name: "Command", category: "Behavioral"),
        DesignPattern(name: "Iterator", category: "Behavioral"),
        DesignPattern(name: "Mediator", category: "Behavioral"),
        DesignPattern(name: "Memento", category: "Behavioral"),
        DesignPattern(name: "Observer", category: "Behavioral"),
        DesignPattern(name: "State", category: "Behavioral"),
        DesignPattern(name: "Strategy", category: "Behavioral"),
        DesignPattern(name: "Template Method", category: "Behavioral"),
        DesignPattern(name: "Visitor", category: "Behavioral"),
    ]

    static let designPatternCategories = [
        DesignPatternCategory.creational,
        DesignPatternCategory.structural,
        DesignPatternCategory.behavioral
        
    ]
}




