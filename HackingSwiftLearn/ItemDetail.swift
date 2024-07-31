//
//  ItemDetail.swift
//  HackingSwiftLearn
//
//  Created by Eren on 31.07.2024.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    
    @EnvironmentObject var favorite: Favorite //*****
    
    @State private var addFavoriteButton: Bool = false

    
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFill()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Spacer()
            
            HStack {
                Button("Order This") {
                    order.add(item: item)
                }
                .buttonStyle(.borderedProminent)
                
            }
            .navigationTitle(item.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Add Favorite", systemImage: addFavoriteButton ? "heart" : "heart.fill"){
                    //button codes here
                    
                    favorite.add(item: item)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example)
            .environmentObject(Order())
            .environmentObject(Favorite())
    }
}
