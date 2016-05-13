//
//  APIManager.h
//  LearnAPIS
//
//  Created by Artur Lan on 9/20/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIManager : NSObject

+ (void)GETRequestWithURL:(NSURL *)URL
        completionHandler:(void(^) (NSData *, NSURLResponse *, NSError *))completionHandler;


@end
