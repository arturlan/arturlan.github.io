//
//  main.m
//  LearnAPI
//
//  Created by Artur Lan on 9/19/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSURLSession *session = [NSURLSession sharedSession];
        NSURL *url = [NSURL   URLWithString:@"https://itunes.apple.com/search?term=apple&media=software"];
        NSURLSessionDataTask *task = [session dataTaskWithRequest:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                                                    
                                                    NSLog(@"%@", data);

                                                    
        }];
        
        [task resume];
        
    }
    return 0;
}

