//
//  LocationsView.swift
//  MapApp
//
//  Created by Emili Sharpinska on 04/04/2026.
//

import SwiftUI
import Combine


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
