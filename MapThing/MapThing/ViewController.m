//
//  ViewController.m
//  MapThing
//
//  Created by Artur Lan on 2/18/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "MapKit/MapKit.h"
#import "SwipieyViewController.h"
#import "APIManager.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) CLLocationManager *locationManger;
@property (nonatomic) NSInteger timerCount;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mapView.showsUserLocation = YES;
    self.locationManger = [[CLLocationManager alloc] init];
    
    [self setupTimer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.locationManger requestWhenInUseAuthorization];
    
}

- (void)setupTimer {
    NSTimer *timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerFired:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    
    self.timerCount = 10;
    
    [timer fire];

}

- (void)timerFired:(NSTimer *)timer {
    //stop timer in 10 secs
    //int count reference
    
    if (self.timerCount < 0) {
        [timer invalidate];
        
        self.timerCount = 10;

        
    }
    //update timer label
    NSString *convertedToString = [[NSNumber numberWithInteger:self.timerCount] stringValue];
    self.timerLabel.text = convertedToString;


    
    self.timerCount--;
}


@end
