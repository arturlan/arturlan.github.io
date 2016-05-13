//
//  ViewController.h
//  CoreLocationMaps
//
//  Created by Artur Lan on 11/6/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapViewAnnotation.h"


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@end

