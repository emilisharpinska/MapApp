//
//  MapAppApp.swift
//  MapApp
//
//  Created by Emili Sharpinska on 02/04/2026.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
