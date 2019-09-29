//
//  MapViewController.swift
//  BusParets
//
//  Created by Jose Antonio Landete Muñoz on 29/09/2019.
//  Copyright © 2019 devMonkey87. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapVista: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Asignación de delegates:
        mapVista.delegate = self
        locationManager.delegate = self
        
        // Ajuste de precisión
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //Petición acceso al usuario: se complementa con añadido de fila en archivo Info.plist
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        

    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // en el array locations , primera posición están nuestras coordenadas:
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        
        
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        
        // dirige a nuestra ubicación actual
        self.mapVista.setRegion(region, animated: true)
        
    }
    
    

   

}
