//
//  LocationModel.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 02/01/24.
//

import Foundation
import MapKit

struct LocationModel: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
