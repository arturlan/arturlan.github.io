//
//  FoursquareAPIManeger.m
//  Mapit
//
//  Created by Artur Lan on 9/27/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "FoursquareAPIManeger.h"
#import <AFNetworking/AFNetworking.h>



@implementation FoursquareAPIManeger

+ (void)searchFoursquarePlacesForTerm:(NSString *)term
                             location:(CLLocationCoordinate2D)location
                    completionHandler:(void(^)(id response, NSError *error))handler {
   
    NSString *APIBase = @"https://api.foursquare.com";
    NSString *APIVersion = @"v2";
    NSString *APIEndpoint = @"venues/search";
    
    term = [term stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];

    
    NSString *urlString = [NSString stringWithFormat:@"%@/%@/%@?client_id=IN4V05KYYXLPDXGIHMCDSPVIAG30BTOG4NC3eAEAYFYIQZID0&client_secret=CD31L2IZKSYQ1AAGTHQQEF2GHXJLI43CXYV1KVCEEUQZQ2G4&v=20150927&ll=%f,%f&query=%@", APIBase, APIVersion, APIEndpoint, location.latitude, location.longitude, term];
    
    
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        handler(responseObject, nil);
    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
        handler(nil, error);
    }];
    
 
}


@end
