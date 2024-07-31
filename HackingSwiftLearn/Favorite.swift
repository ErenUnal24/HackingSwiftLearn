//
//  Favorite.swift
//  HackingSwiftLearn
//
//  Created by Eren on 31.07.2024.
//

import SwiftUI

final class Favorite: ObservableObject {
   @Published var favoriteItems = [MenuItem]()

    
    func add(item: MenuItem) {
        favoriteItems.append(item)
    }

    func remove(item: MenuItem) {
        if let index = favoriteItems.firstIndex(of: item) {
            favoriteItems.remove(at: index)
        }
    }
}

