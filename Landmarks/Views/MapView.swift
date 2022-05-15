//
//  MapView.swift
//  Landmarks
//
//  Created by Dan Percic on 14.05.2022.
//

import MapKit
import SwiftUI

struct MapView: View {
    var coordinates: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region).onAppear {
            setRegion(coordinates)
        }
    }

    private func setRegion(_ coordinates: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
