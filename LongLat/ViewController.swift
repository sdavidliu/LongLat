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
    var outsideZones = [OutsideZone]()

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
        
        let o1 = CLLocationCoordinate2D(latitude: 33.649355, longitude: -117.842984)
        let o2 = CLLocationCoordinate2D(latitude: 33.649371, longitude: -117.842858)
        let o3 = CLLocationCoordinate2D(latitude: 33.649255, longitude: -117.842831)
        let o4 = CLLocationCoordinate2D(latitude: 33.649170, longitude: -117.842702)
        let o5 = CLLocationCoordinate2D(latitude: 33.649133, longitude: -117.842729)
        let o6 = CLLocationCoordinate2D(latitude: 33.649284, longitude: -117.842965)
        let o7 = CLLocationCoordinate2D(latitude: 33.649106, longitude: -117.842592)
        let o8 = CLLocationCoordinate2D(latitude: 33.649108, longitude: -117.842529)
        let o9 = CLLocationCoordinate2D(latitude: 33.649124, longitude: -117.842391)
        let o10 = CLLocationCoordinate2D(latitude: 33.648994, longitude: -117.842378)
        let o11 = CLLocationCoordinate2D(latitude: 33.648974, longitude: -117.842540)
        let o12 = CLLocationCoordinate2D(latitude: 33.648930, longitude: -117.842913)
        let o13 = CLLocationCoordinate2D(latitude: 33.648989, longitude: -117.842920)
        let o14 = CLLocationCoordinate2D(latitude: 33.649012, longitude: -117.842708)
        let o15 = CLLocationCoordinate2D(latitude: 33.648892, longitude: -117.843051)
        let o16 = CLLocationCoordinate2D(latitude: 33.649362, longitude: -117.843105)
        let o17 = CLLocationCoordinate2D(latitude: 33.648904, longitude: -117.842362)
        let o18 = CLLocationCoordinate2D(latitude: 33.648775, longitude: -117.842531)
        let o19 = CLLocationCoordinate2D(latitude: 33.648625, longitude: -117.842505)
        let o20 = CLLocationCoordinate2D(latitude: 33.648532, longitude: -117.842302)
        let o21 = CLLocationCoordinate2D(latitude: 33.648555, longitude: -117.842148)
        let o22 = CLLocationCoordinate2D(latitude: 33.648922, longitude: -117.842213)
        let o23 = CLLocationCoordinate2D(latitude: 33.648429, longitude: -117.842470)
        let o24 = CLLocationCoordinate2D(latitude: 33.648412, longitude: -117.842272)
        let o25 = CLLocationCoordinate2D(latitude: 33.648415, longitude: -117.842521)
        let o26 = CLLocationCoordinate2D(latitude: 33.648401, longitude: -117.842653)
        let o27 = CLLocationCoordinate2D(latitude: 33.648384, longitude: -117.842808)
        let o28 = CLLocationCoordinate2D(latitude: 33.648201, longitude: -117.842784)
        let o29 = CLLocationCoordinate2D(latitude: 33.648137, longitude: -117.842507)
        let o30 = CLLocationCoordinate2D(latitude: 33.648115, longitude: -117.842255)
        let o31 = CLLocationCoordinate2D(latitude: 33.648058, longitude: -117.841918)
        let o32 = CLLocationCoordinate2D(latitude: 33.648444, longitude: -117.842138)
        let o33 = CLLocationCoordinate2D(latitude: 33.648345, longitude: -117.841930)
        let o34 = CLLocationCoordinate2D(latitude: 33.648454, longitude: -117.841553)
        let o35 = CLLocationCoordinate2D(latitude: 33.648557, longitude: -117.841747)
        let o36 = CLLocationCoordinate2D(latitude: 33.648779, longitude: -117.841246)
        let o37 = CLLocationCoordinate2D(latitude: 33.648891, longitude: -117.841427)
        let o38 = CLLocationCoordinate2D(latitude: 33.648977, longitude: -117.841093)
        let o39 = CLLocationCoordinate2D(latitude: 33.649074, longitude: -117.841263)
        let o40 = CLLocationCoordinate2D(latitude: 33.649271, longitude: -117.841557)
        let o41 = CLLocationCoordinate2D(latitude: 33.649148, longitude: -117.841684)
        let o42 = CLLocationCoordinate2D(latitude: 33.649415, longitude: -117.842193)
        let o43 = CLLocationCoordinate2D(latitude: 33.649654, longitude: -117.842641)
        let o44 = CLLocationCoordinate2D(latitude: 33.649388, longitude: -117.841934)
        let o45 = CLLocationCoordinate2D(latitude: 33.649468, longitude: -117.842148)
        let o46 = CLLocationCoordinate2D(latitude: 33.649634, longitude: -117.841976)
        let o47 = CLLocationCoordinate2D(latitude: 33.649621, longitude: -117.842349)
        let o48 = CLLocationCoordinate2D(latitude: 33.649843, longitude: -117.842233)
        let o49 = CLLocationCoordinate2D(latitude: 33.649702, longitude: -117.842598)
        let o50 = CLLocationCoordinate2D(latitude: 33.650087, longitude: -117.842677)
        let o51 = CLLocationCoordinate2D(latitude: 33.649862, longitude: -117.842911)
        let o52 = CLLocationCoordinate2D(latitude: 33.649667, longitude: -117.843039)
        let o53 = CLLocationCoordinate2D(latitude: 33.649549, longitude: -117.842829)
        let o54 = CLLocationCoordinate2D(latitude: 33.649267, longitude: -117.842505)
        let o55 = CLLocationCoordinate2D(latitude: 33.649201, longitude: -117.842400)
        
        let oz1Points = OutsideZone(name: "OZ1", points: [o1,o2,o3,o4,o5,o6])
        let oz2Points = OutsideZone(name: "OZ2", points: [o5,o4,o7,o8,o11,o12,o13,o14])
        let oz3Points = OutsideZone(name: "OZ3", points: [o11,o8,o9,o10])
        let oz4Points = OutsideZone(name: "OZ4", points: [o11,o10,o17,o18])
        let oz5Points = OutsideZone(name: "OZ5", points: [o17,o20,o21,o22])
        let oz6Points = OutsideZone(name: "OZ6", points: [o17,o18,o19,o20])
        let oz7Points = OutsideZone(name: "OZ7", points: [o19,o20,o24,o23])
        let oz8Points = OutsideZone(name: "OZ8", points: [o23,o25,o29,o30,o24])
        let oz9Points = OutsideZone(name: "OZ9", points: [o25,o26,o27,o28,o29])
        let oz10Points = OutsideZone(name: "OZ10", points: [o24,o32,o33,o31,o30])
        let oz11Points = OutsideZone(name: "OZ11", points: [o33,o31,o34,o35])
        let oz12Points = OutsideZone(name: "OZ12", points: [o35,o34,o36,o37])
        let oz13Points = OutsideZone(name: "OZ13", points: [o36,o37,o39,o38])
        let oz14Points = OutsideZone(name: "OZ14", points: [o37,o39,o40,o41])
        let oz15Points = OutsideZone(name: "OZ15", points: [o40,o41,o44,o46])
        let oz16Points = OutsideZone(name: "OZ16", points: [o42,o43,o49,o47,o45])
        let oz17Points = OutsideZone(name: "OZ17", points: [o44,o45,o47,o48,o46])
        let oz18Points = OutsideZone(name: "OZ18", points: [o48,o47,o49,o50])
        let oz19Points = OutsideZone(name: "OZ19", points: [o49,o50,o51,o52,o53])
        let oz20Points = OutsideZone(name: "OZ20", points: [o52,o53,o1,o16])
        let oz21Points = OutsideZone(name: "OZ21", points: [o16,o15,o13,o14,o5,o6,o1])
        let oz22Points = OutsideZone(name: "OZ22", points: [o4,o7,o8,o9,o55,o54])
        
        outsideZones = [oz1Points,oz2Points,oz3Points,oz4Points,oz5Points,oz6Points,oz7Points,oz8Points,oz9Points,oz10Points,oz11Points,oz12Points,oz13Points,oz14Points,oz15Points,oz16Points,oz17Points,oz18Points,oz19Points,oz20Points,oz21Points,oz22Points]
        
        for oz in outsideZones {
            let polygon = MKPolygon(coordinates: &oz.points, count: oz.points.count)
            mapView.add(polygon)
        }
        
        //let oz1Polygon = MKPolygon(coordinates: &oz1Points.points, count: oz1Points.points.count)
        //mapView.addOverlays([oz1Polygon])
        
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
        let loc = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        label.text = "Latitude: \(latitude)\nLongitude: \(longitude)"
        
        var zoneString = "None"
        for oz in outsideZones{
            if (loc.contained(by: oz.points)){
                zoneString = oz.name
            }
        }
        
        let alt = round(currentLocation.altitude*100)/100
        var level = "Lower"
        if (alt > 13.0){
            level = "Upper"
        }
        
        
        label2.text = "Current location:\(zoneString)\nAlt:\(alt) Acc:\(round(currentLocation.verticalAccuracy*100)/100) Level:\(level)"
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
    var points = [CLLocationCoordinate2D]()
    
    init(name : String, points : [CLLocationCoordinate2D]){
        self.name = name
        self.points = points
    }
}

