//
//  CodeSmell.swift
//  SwiftUI Navigation
//
//  Created by Santiago Mattiauda on 8/6/22.
//

import SwiftUI

struct CodeSmells: View {
    let category: CodeSmellCategory
    
    var body: some View {
        List{
            ForEach(DataProvider.codeSmells.filter{$0.category == category.name},id: \.id){ pattern in
                Text(pattern.name)
            }
        }.navigationTitle(Text(category.name))
    }
}

struct CodeSmells_Previews: PreviewProvider {
    static var previews: some View {
        CodeSmells(category: CodeSmellCategory.couplers)
    }
}
