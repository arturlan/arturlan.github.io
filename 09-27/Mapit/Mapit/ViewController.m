//
//  ViewController.m
//  Mapit
//
//  Created by Artur Lan on 9/27/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "FoursquareAPIManeger.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController () <UITextFieldDelegate, MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) NSMutableArray *searchResults;

@property (nonatomic) CLLocationManager *locationManager;

@property (nonatomic) BOOL firstTime;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.firstTime = YES;
    
    self.mapView.delegate = self;
    
    //set the delegate of "self.searchTextField" to "self"
    self.searchTextField.delegate = self;
    
    //getting current location
    self.locationManager = [[CLLocationManager alloc] init];
    
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
}
- (IBAction)searchButtonTapped:(UIButton *)sender {
    [self performSearch];

}
- (void)performSearch {
    [self.view endEditing:YES];
    
    MKUserLocation *userLocation = self.mapView.userLocation;
    [FoursquareAPIManeger searchFoursquarePlacesForTerm:self.searchTextField.text
                                               location:userLocation.coordinate
                                      completionHandler:^(id response, NSError *error) {
        
        self.searchResults = response[@"response"][@"venues"];
        [self updateMap];
    }];
}
- (void)updateMap {
    //removes all previous pins
    [self.mapView removeAnnotations:self.mapView.annotations];
    
    for (NSDictionary *venue in self.searchResults) {
        [self addMapAnnotationForVenue:venue];
    }
    
}
- (void)addMapAnnotationForVenue:(NSDictionary *)venue {
    
    
    MKPointAnnotation *mapPin = [[MKPointAnnotation alloc] init];
    
    double lat = [venue[@"location"][@"lat"] doubleValue];
    double lng = [venue[@"location"][@"lng"] doubleValue];
    
    CLLocationCoordinate2D latLng = CLLocationCoordinate2DMake(lat, lng);
    
    mapPin.coordinate = latLng;
    
    //set title and subtitle on the map pin
    mapPin.title = venue[@"name"];
    
    NSArray *categories = venue[@"categories"];
    if (categories.count > 0) {
        NSDictionary *firstCategory = categories[0];
        mapPin.subtitle = firstCategory[@"name"];
    }
    
    [self.mapView addAnnotation:mapPin];

    
    
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self performSearch];
    return YES;
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    if (self.firstTime) {
        self.firstTime = NO;
        MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
        [self.mapView setRegion:MKCoordinateRegionMake(userLocation.coordinate, span)];
    }
}

@end
