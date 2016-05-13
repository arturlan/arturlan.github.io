//
//  ViewController.m
//  PinOnMap
//
//  Created by Artur Lan on 11/7/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "MapPin.h"
#import "View.h"
@interface ViewController ()<MKMapViewDelegate>

@property (nonatomic) CLLocationManager *locationManager;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //gives you current location
    self.mapView.delegate = self;
    
    self.mapView.showsUserLocation = YES;
    self.mapView.showsBuildings = YES;
    
    self.locationManager = [CLLocationManager new];
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    
    //custom pin
    CLLocationCoordinate2D location;
    location.latitude = 37.337769;
    location.longitude = -122.032293;
    
    MapPin *pin = [MapPin alloc];
    pin.coordinate = location;
    pin.title = @"Brooklyn, NY";
    [self.mapView addAnnotation:pin];
}
//annimated pin
- (MKAnnotationView *)mapView:(MKMapView *)mapview viewForAnnotation:(id <MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    static NSString* AnnotationIdentifier = @"AnnotationIdentifier";
    MKAnnotationView *annotationView = [self.mapView dequeueReusableAnnotationViewWithIdentifier:AnnotationIdentifier];
    if(annotationView)
        return annotationView;
    else
    {
        UIImage *img = [UIImage imageNamed:@"Pin.png"];
        
        MKAnnotationView *annotationView =
        [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:AnnotationIdentifier];
        annotationView.canShowCallout = YES;
        annotationView.image = img;
        annotationView.draggable = YES;
        
        /*
         // change left accessory view button with image
         UIImageView *leftAccView = [[UIImageView alloc] initWithImage:img];
         annotationView.leftCalloutAccessoryView = leftAccView;
         
         //include a right button to show more info
         UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
         [rightButton addTarget:self action:@selector(calloutSubMenu:) forControlEvents:UIControlEventTouchUpInside];
         [rightButton setTitle:annotation.title forState:UIControlStateNormal];
         annotationView.rightCalloutAccessoryView = rightButton;
         */
        
        return annotationView;
    }
    return nil;
}

// Customize accessory view
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view {
    
    UIView *rootView = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil] objectAtIndex:0];

    [view addSubview:rootView];
    
    
    
}

- (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view {
    UIView *rootView = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil] objectAtIndex:0];

    
    
    [view willRemoveSubview:rootView];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    //zoom in
    MKMapCamera *camera = [MKMapCamera cameraLookingAtCenterCoordinate:userLocation.coordinate fromEyeCoordinate:CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude) eyeAltitude:10000];
    [mapView setCamera:camera animated:YES];

}



@end
