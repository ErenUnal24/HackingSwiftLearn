//
//  FavoriteView.swift
//  HackingSwiftLearn
//
//  Created by Eren on 31.07.2024.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var favorite: Favorite
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favorite.favoriteItems) { item in
                    HStack {
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("Favorite Meals")
        }
    }
}

#Preview {
    FavoriteView().environmentObject(Favorite())
}
