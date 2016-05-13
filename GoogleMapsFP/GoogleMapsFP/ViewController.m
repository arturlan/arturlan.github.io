//
//  ViewController.m
//  GoogleMapsFP
//
//  Created by Artur Lan on 11/11/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    GMSMapView *mapView;
}

@property (weak, nonatomic) IBOutlet UIView *map;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:40.745014 longitude:-73.936422 zoom:6];
    
    mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    
    self.map = mapView;
    
}



@end
