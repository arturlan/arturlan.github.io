//
//  FoursquareAPIManeger.h
//  Mapit
//
//  Created by Artur Lan on 9/27/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@interface FoursquareAPIManeger : NSObject

+ (void)searchFoursquarePlacesForTerm:(NSString *)term
                             location:(CLLocationCoordinate2D)location
                    completionHandler:(void(^)(id response, NSError *error))handler;

@end
