//
//  MapView.swift
//  Map-App
//
//  Created by kuehar on 2021/06/16.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let searchKey:String
    
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let geocoder = CLGeocoder()
        
        geocoder.geocodeAddressString(searchKey,completionHandler:{ (placemarks,error) in
            if let unwrapPlacemarks = placemarks ,
               let firstPlacemark = unwrapPlacemarks.first ,
               let location = firstPlacemark.location {
                
                let targetCoordinate = location.coordinate
                
                print(targetCoordinate)
            }
                                    
                                      
                                      
                                      
                                      
                                      
                                      })
        
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "スカイツリー")
    }
}
