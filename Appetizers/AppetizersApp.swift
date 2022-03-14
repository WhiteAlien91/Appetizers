//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Dmitry Sechkarenko on 22.02.2022.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
