//
//  ViewController.m
//  CoreLocationMaps
//
//  Created by Artur Lan on 11/6/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "MapViewAnnotation.h"
#import "CustomAnnotation.h"
@interface ViewController () <MKMapViewDelegate, CLLocationManagerDelegate>

@property (nonatomic) CLLocationManager *locationManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mapView.delegate = self;
    
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager setDelegate:self];
    
    [self.locationManager setDistanceFilter:kCLDistanceFilterNone];
    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
    [self.mapView setShowsUserLocation:YES];
    
//    self.mapView.showsUserLocation = YES;
//    self.mapView.showsBuildings = YES;
//    
//    self.locationManager = [CLLocationManager new];
//    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
//        [self.locationManager requestWhenInUseAuthorization];
//    }
//    [self.locationManager startUpdatingLocation];
    
    
//    MKCoordinateRegion region = {{0.0,0.0}, {0.0,0.0}};
//    region.center.latitude = 40.4442525;
//    region.center.longitude = -73.56143448;
//    [self.mapView setRegion:region];
//    
//    MapViewAnnotation *mapAnnotation = [[MapViewAnnotation alloc] init];
//    mapAnnotation.title = @"Custom";
//    mapAnnotation.coordinate = region.center;
//                                        
//    [self.mapView addAnnotation:mapAnnotation];
}
-(void) mapView:(MKMapView *)mapView didAddAnnotationViews:(nonnull NSArray<MKAnnotationView *> *)views {
    MKAnnotationView *annotationView = [views objectAtIndex:0];
    id<MKAnnotation> mp = [annotationView annotation];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 250, 250);
    [self.mapView setRegion:region animated:YES];

}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
//    MKMapCamera *camera = [MKMapCamera cameraLookingAtCenterCoordinate:userLocation.coordinate fromEyeCoordinate:CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude) eyeAltitude:10000];
//    [mapView setCamera:camera animated:YES];
//    CLLocationCoordinate2D userCoordinate = userLocation.location.coordinate;
//for(int i = 1; i<=5;i++)
//{
//    CGFloat latDelta = rand()*.035/RAND_MAX -.02;
//    
//    CGFloat longDelta = rand()*.03/RAND_MAX -.015;
//    
//    CLLocationCoordinate2D newCoord = { userCoordinate.latitude + latDelta, userCoordinate.longitude + longDelta };
//    MapViewAnnotation *mp = [[MapViewAnnotation alloc] initWithCoordinate:newCoord title:[NSString stringWithFormat:@"Azam Home %d",i] subTitle:@"Home Sweet Home"];
//    [mapView addAnnotation:mp];
//    [mp dealloc];
    
//}
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // add the annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Groove Da Praia";
    point.subtitle = @"Is This Love";
    [self.mapView addAnnotation:point];
    NSLog(@"Repeating");
    
    [self.locationManager stopUpdatingLocation];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {

    if ([annotation isKindOfClass:[MKUserLocation class]])
    return nil;
    
    static NSString* AnnotationIdentifier = @"AnnotationIdentifier";
    MKAnnotationView *annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:AnnotationIdentifier];
    if(annotationView)
        return annotationView;
    else
    {
        MKAnnotationView *annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation
                                                                         reuseIdentifier:AnnotationIdentifier];
        annotationView.canShowCallout = YES;
        annotationView.image = [UIImage imageNamed:@"Icon40pt.png"];

        return annotationView;
    }
    return nil;
    
    
}

- (void)didReceiveMemoryWarwaning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
