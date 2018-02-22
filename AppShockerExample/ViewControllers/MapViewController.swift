//
//  MapViewController.swift
//  AppShockerExample
//
//  Created by Nitin Khurana on 20/02/18.
//  Copyright © 2018 Nitin Khurana. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let latitude:CLLocationDegrees = 48.399193
        let longitude:CLLocationDegrees = 9.993341
        
        let latitudeDelta:CLLocationDegrees = 0.01
        let longitudeDelta:CLLocationDegrees = 0.01
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
        let churchLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, span)
        
        let churchAnnoation:MKPointAnnotation = MKPointAnnotation()
        churchAnnoation.coordinate = churchLocation
        churchAnnoation.title = "Ulm Minster"
        churchAnnoation.subtitle = "A famous church in Germany"
    
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(churchAnnoation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
