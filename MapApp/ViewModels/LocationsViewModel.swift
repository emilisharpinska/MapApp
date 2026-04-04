//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Emili Sharpinska on 04/04/2026.
//

import Foundation
import Combine


class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init(){
        let locations: [Location] = LocationsDataService.locations
        self.locations = locations
    }
}
