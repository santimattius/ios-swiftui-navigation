//
//  DesignPatterns.swift
//  SwiftUI Navigation
//
//  Created by Santiago Mattiauda on 8/6/22.
//

import SwiftUI

struct DesignPatterns: View {
    
    let category: DesignPatternCategory
    
    var body: some View {
        List{
            ForEach(DataProvider.designPatterns.filter{$0.category == category.name},id: \.id){ pattern in
                Text(pattern.name)
            }
        }.navigationTitle(Text(category.name))
    }
}

struct DesignPatterns_Previews: PreviewProvider {
    static var previews: some View {
        DesignPatterns(category: DesignPatternCategory.creational)
    }
}
