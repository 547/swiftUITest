//
//  MapView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/4.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    var landmark = Landmark()
    typealias UIViewType = MKMapView
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView.init(frame: CGRect.zero)
    }
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = landmark.locationCoordinate
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
