//
//  ContentView.swift
//  HackingSwiftLearn
//
//  Created by Eren on 31.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
        

        
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name){
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                    ItemDetail(item: item)
            }
            .navigationTitle("Menu")
            .listStyle(.insetGrouped)
        }

    }
}

#Preview {
    ContentView()
}
