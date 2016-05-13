//
//  MapPin.h
//  PinOnMap
//
//  Created by Artur Lan on 11/7/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface MapPin : NSObject <MKAnnotation>
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;


@end
