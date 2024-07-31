//
//  HackingSwiftLearnApp.swift
//  HackingSwiftLearn
//
//  Created by Eren on 31.07.2024.
//

import SwiftUI

@main
struct HackingSwiftLearnApp: App {
    
    @StateObject var order = Order()

    
    var body: some Scene {
        
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
