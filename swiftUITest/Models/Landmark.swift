//
//  Landmark.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/4.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI
import CoreLocation
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    func image(forSize size: Int) -> Image {
        let image = Image.init(imageName)
        return image
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
    init(id:Int = 0, name:String = "name", imageName:String = "turtlerock", coordinates:Coordinates = Coordinates.init(latitude: 34.011286, longitude: -116.166868), state:String = "state", park:String =  "park", category:Category = .featured) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.coordinates = coordinates
        self.state = state
        self.park = park
        self.category = category
    }
    
}
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
