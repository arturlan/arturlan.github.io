//
//  APIManager.h
//  MapThing
//
//  Created by Artur Lan on 2/18/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface APIManager : NSObject

+ (void)getLatestISSLocation:(void(^)(CLLocationCoordinate2D))completion;

@end
