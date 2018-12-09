//
//  ViewController.swift
//  LTMtest
//
//  Created by 和田 明大 on 2018/12/09.
//  Copyright © 2018 和田 明大. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let coordinate = CLLocationCoordinate2DMake(37.331652997806785, -122.03072304117417)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated:true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(37.331652997806785, -122.03072304117417)
        annotation.title = "title"
        annotation.subtitle = "subtitle"
        self.mapView.addAnnotation(annotation)
    }
    


}

