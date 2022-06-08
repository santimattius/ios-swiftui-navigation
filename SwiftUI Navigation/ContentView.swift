//
//  ContentView.swift
//  SwiftUI Navigation
//
//  Created by Santiago Mattiauda on 8/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var path = NavigationPath()
    @State var codeSmellsCategories =  DataProvider.codeSmellCategories
    @State var designPatternCategories =  DataProvider.designPatternCategories
    
    var body: some View {
        NavigationStack(path: $path){
            List {
                Section(header:Text("Code Smells")){
                    ForEach(codeSmellsCategories, id: \.id){ category in
                        NavigationLink(value: category,label: {
                            Text(category.name)
                        })
                    }
                }
                Section(header:Text("Design Patterns")){
                    ForEach(designPatternCategories, id: \.id){ category in
                        NavigationLink(value: category,label: {
                            Text(category.name)
                        })
                    }
                }
            }
            .navigationDestination(for: CodeSmellCategory.self) { category in
                CodeSmells(category: category)
            }
            .navigationDestination(for: DesignPatternCategory.self, destination: { category in
                DesignPatterns(category: category)
            })
            .navigationTitle(Text("Refactoring"))
        }.onOpenURL { url in
            print(url)
            let host = url.host()
            let link = url.lastPathComponent
            print(link)
            
            if !["smells","patterns"].contains(host) {
                return
            }
                
            if let cat = codeSmellsCategories.first(where: {$0.deeplink == link}){
                popToRoot()
                path.append(cat)
            }
            if let cat = designPatternCategories.first(where: {$0.deeplink == link}){
                popToRoot()
                path.append(cat)
            }
        }
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
