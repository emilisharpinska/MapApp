//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Emili Sharpinska on 04/04/2026.
//

import Foundation
import Combine
import MapKit
import SwiftUI


class LocationsViewModel: ObservableObject {
    
    //All loaded locations
    @Published var locations: [Location]
    
    //Current Location on map
    @Published var mapLocation: Location {
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init(){
        let locations: [Location] = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location){
        withAnimation(.easeInOut) {
                mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
}
