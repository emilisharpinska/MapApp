//
//  LocationsListView.swift
//  MapApp
//
//  Created by Emili Sharpinska on 05/04/2026.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
               listRowView(for: location)
            }
        }
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationsViewModel())
}

extension LocationsListView {
    
    private func listRowView(for location: Location) -> some View {
        HStack{
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading){
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
