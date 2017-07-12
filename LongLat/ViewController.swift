//
//  ViewController.swift
//  LongLat
//
//  Created by David Liu on 7/10/17.
//  Copyright © 2017 David Liu. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import CoreBluetooth

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate, CBPeripheralManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    var locManager = CLLocationManager()
    var currentLocation = CLLocation()
    var myBTManager: CBPeripheralManager?
    var o1 = CLLocationCoordinate2D()
    var o2 = CLLocationCoordinate2D()
    var o3 = CLLocationCoordinate2D()
    var o4 = CLLocationCoordinate2D()
    var o5 = CLLocationCoordinate2D()
    var o6 = CLLocationCoordinate2D()
    var o7 = CLLocationCoordinate2D()
    var o8 = CLLocationCoordinate2D()
    var o9 = CLLocationCoordinate2D()
    var o10 = CLLocationCoordinate2D()
    var o11 = CLLocationCoordinate2D()
    var o12 = CLLocationCoordinate2D()
    var o13 = CLLocationCoordinate2D()
    var o14 = CLLocationCoordinate2D()
    var o15 = CLLocationCoordinate2D()
    var o16 = CLLocationCoordinate2D()
    var o17 = CLLocationCoordinate2D()
    var o18 = CLLocationCoordinate2D()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.delegate = self
        
        locManager.requestWhenInUseAuthorization()
        
        if( CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedWhenInUse ||
            CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedAlways){
            
            locManager.delegate = self
            locManager.startUpdatingLocation()
            
        }
        
        myBTManager = CBPeripheralManager(delegate: self, queue: nil, options: nil)
        
        o1 = CLLocationCoordinate2D(latitude: 33.649292, longitude: -117.842989)
        o2 = CLLocationCoordinate2D(latitude: 33.648905, longitude: -117.842964)
        o3 = CLLocationCoordinate2D(latitude: 33.648984, longitude: -117.842535)
        o4 = CLLocationCoordinate2D(latitude: 33.649095, longitude: -117.842526)
        o5 = CLLocationCoordinate2D(latitude: 33.649091, longitude: -117.842397)
        o6 = CLLocationCoordinate2D(latitude: 33.648879, longitude: -117.842499)
        o7 = CLLocationCoordinate2D(latitude: 33.648908, longitude: -117.842233)
        o8 = CLLocationCoordinate2D(latitude: 33.648895, longitude: -117.842367)
        o9 = CLLocationCoordinate2D(latitude: 33.648531, longitude: -117.842434)
        o10 = CLLocationCoordinate2D(latitude: 33.648549, longitude: -117.842185)
        o11 = CLLocationCoordinate2D(latitude: 33.648531, longitude: -117.842305)
        o12 = CLLocationCoordinate2D(latitude: 33.648419, longitude: -117.842437)
        o13 = CLLocationCoordinate2D(latitude: 33.648408, longitude: -117.842283)
        o14 = CLLocationCoordinate2D(latitude: 33.648381, longitude: -117.842806)
        o15 = CLLocationCoordinate2D(latitude: 33.648289, longitude: -117.842792)
        o16 = CLLocationCoordinate2D(latitude: 33.648225, longitude: -117.842340)
        o17 = CLLocationCoordinate2D(latitude: 33.648125, longitude: -117.842031)
        o18 = CLLocationCoordinate2D(latitude: 33.648290, longitude: -117.841907)
        
        var z1Points = [CLLocationCoordinate2D]()
        z1Points.append(CLLocationCoordinate2D(latitude: o1.latitude, longitude: o1.longitude))
        z1Points.append(CLLocationCoordinate2D(latitude: o2.latitude, longitude: o2.longitude))
        z1Points.append(CLLocationCoordinate2D(latitude: o3.latitude, longitude: o3.longitude))
        z1Points.append(CLLocationCoordinate2D(latitude: o4.latitude, longitude: o4.longitude))
        var z2Points = [CLLocationCoordinate2D]()
        z2Points.append(CLLocationCoordinate2D(latitude: o3.latitude, longitude: o3.longitude))
        z2Points.append(CLLocationCoordinate2D(latitude: o4.latitude, longitude: o4.longitude))
        z2Points.append(CLLocationCoordinate2D(latitude: o5.latitude, longitude: o5.longitude))
        z2Points.append(CLLocationCoordinate2D(latitude: o8.latitude, longitude: o8.longitude))
        z2Points.append(CLLocationCoordinate2D(latitude: o6.latitude, longitude: o6.longitude))
        var z3Points = [CLLocationCoordinate2D]()
        z3Points.append(CLLocationCoordinate2D(latitude: o6.latitude, longitude: o6.longitude))
        z3Points.append(CLLocationCoordinate2D(latitude: o8.latitude, longitude: o8.longitude))
        z3Points.append(CLLocationCoordinate2D(latitude: o7.latitude, longitude: o7.longitude))
        z3Points.append(CLLocationCoordinate2D(latitude: o10.latitude, longitude: o10.longitude))
        z3Points.append(CLLocationCoordinate2D(latitude: o11.latitude, longitude: o11.longitude))
        z3Points.append(CLLocationCoordinate2D(latitude: o9.latitude, longitude: o9.longitude))
        var z4Points = [CLLocationCoordinate2D]()
        z4Points.append(CLLocationCoordinate2D(latitude: o9.latitude, longitude: o9.longitude))
        z4Points.append(CLLocationCoordinate2D(latitude: o11.latitude, longitude: o11.longitude))
        z4Points.append(CLLocationCoordinate2D(latitude: o13.latitude, longitude: o13.longitude))
        z4Points.append(CLLocationCoordinate2D(latitude: o12.latitude, longitude: o12.longitude))
        var z5Points = [CLLocationCoordinate2D]()
        z5Points.append(CLLocationCoordinate2D(latitude: o12.latitude, longitude: o12.longitude))
        z5Points.append(CLLocationCoordinate2D(latitude: o13.latitude, longitude: o13.longitude))
        z5Points.append(CLLocationCoordinate2D(latitude: o16.latitude, longitude: o16.longitude))
        z5Points.append(CLLocationCoordinate2D(latitude: o15.latitude, longitude: o15.longitude))
        z5Points.append(CLLocationCoordinate2D(latitude: o14.latitude, longitude: o14.longitude))
        var z6Points = [CLLocationCoordinate2D]()
        z6Points.append(CLLocationCoordinate2D(latitude: o13.latitude, longitude: o13.longitude))
        z6Points.append(CLLocationCoordinate2D(latitude: o18.latitude, longitude: o18.longitude))
        z6Points.append(CLLocationCoordinate2D(latitude: o17.latitude, longitude: o17.longitude))
        z6Points.append(CLLocationCoordinate2D(latitude: o16.latitude, longitude: o16.longitude))
        
        let z1Polygon = MKPolygon(coordinates: &z1Points, count: z1Points.count)
        let z2Polygon = MKPolygon(coordinates: &z2Points, count: z2Points.count)
        let z3Polygon = MKPolygon(coordinates: &z3Points, count: z3Points.count)
        let z4Polygon = MKPolygon(coordinates: &z4Points, count: z4Points.count)
        let z5Polygon = MKPolygon(coordinates: &z5Points, count: z5Points.count)
        let z6Polygon = MKPolygon(coordinates: &z6Points, count: z6Points.count)
        mapView.addOverlays([z1Polygon, z2Polygon, z3Polygon, z4Polygon, z5Polygon, z6Polygon])
        
        currentLocation = locManager.location!
        let latitude = currentLocation.coordinate.latitude
        let longitude = currentLocation.coordinate.longitude
        let startCoord = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let adjustedRegion = mapView.regionThatFits(MKCoordinateRegionMakeWithDistance(startCoord, 200, 200))
        mapView.setRegion(adjustedRegion, animated: true)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = manager.location!
        let latitude = currentLocation.coordinate.latitude
        let longitude = currentLocation.coordinate.longitude
        label.text = "Latitude: \(latitude)\nLongitude: \(longitude)"
        
        var zoneString = ""
        if (CLLocationCoordinate2D(latitude: latitude, longitude: longitude).contained(by: [o1, o2, o3, o4])){
            zoneString = "Z1"
        }
        if (CLLocationCoordinate2D(latitude: latitude, longitude: longitude).contained(by: [o3, o4, o5, o8, o6])){
            zoneString = "Z2"
        }
        if (CLLocationCoordinate2D(latitude: latitude, longitude: longitude).contained(by: [o6, o8, o7, o10, o11, o9])){
            zoneString = "Z3"
        }
        if (CLLocationCoordinate2D(latitude: latitude, longitude: longitude).contained(by: [o9, o11, o13, o12])){
            zoneString = "Z4"
        }
        if (CLLocationCoordinate2D(latitude: latitude, longitude: longitude).contained(by: [o12, o13, o16, o15, o14])){
            zoneString = "Z5"
        }
        if (CLLocationCoordinate2D(latitude: latitude, longitude: longitude).contained(by: [o13, o18, o17, o16])){
            zoneString = "Z6"
        }
        
        label2.text = "Current location: \(zoneString)"
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let polygonView = MKPolygonRenderer(overlay: overlay)
        polygonView.fillColor = UIColor(red: 0, green: 0.847, blue: 1, alpha: 0.25)
        polygonView.lineWidth = 1.0
        polygonView.strokeColor = UIColor.black
        
        return polygonView
    }
    
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        var statusMessage = ""
        
        switch peripheral.state {
        case .poweredOn:
            statusMessage = "Bluetooth Status: Turned On"
            
        case .poweredOff:
            statusMessage = "Bluetooth Status: Turned Off"
            
        case .resetting:
            statusMessage = "Bluetooth Status: Resetting"
            
        case .unauthorized:
            statusMessage = "Bluetooth Status: Not Authorized"
            
        case .unsupported:
            statusMessage = "Bluetooth Status: Not Supported"
            
        default:
            statusMessage = "Bluetooth Status: Unknown"
        }
        
        print(statusMessage)
        
        if peripheral.state == .poweredOff {
            //TODO: Update this property in an App Manager class
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension CLLocationCoordinate2D {
    
    func contained(by vertices: [CLLocationCoordinate2D]) -> Bool {
        let path = CGMutablePath()
        
        for vertex in vertices {
            if path.isEmpty {
                path.move(to: CGPoint(x: vertex.longitude, y: vertex.latitude))
            } else {
                path.addLine(to: CGPoint(x: vertex.longitude, y: vertex.latitude))
            }
        }
        
        let point = CGPoint(x: self.longitude, y: self.latitude)
        return path.contains(point)
    }
    
}

class OutsideZone{
    
    var name = ""
    var points = [MKPointAnnotation]()
    
    init(name : String, points : [MKPointAnnotation]){
        self.name = name
        self.points = points
    }
}

