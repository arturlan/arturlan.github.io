//
//  APIManager.m
//  MapThing
//
//  Created by Artur Lan on 2/18/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

#import "APIManager.h"
#import <AFNetworking/AFNetworking.h>

@implementation APIManager
+ (void)getLatestISSLocation:(void(^)(CLLocationCoordinate2D))completion {
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] init];
    
    [manager GET:@"http://http://api.open-notify.org/iss-now.json" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *position = [responseObject objectForKey:@"iss_position"];
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
    

}

@end
