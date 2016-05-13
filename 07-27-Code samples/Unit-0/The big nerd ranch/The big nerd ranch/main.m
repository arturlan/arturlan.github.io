//
//  main.m
//  The big nerd ranch
//
//  Created by Artur Lan on 7/4/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        
        NSLog(@"The date is %@", now);
        
        double second = [now timeIntervalSince1970];
        NSLog(@"It has been %f since the start 1970.", second);
        
        
        NSHost *name = [NSHost currentHost];
        
        NSString *sec = [name localizedName];
        
        NSLog(@"%@", sec);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        
        NSLog(@"%@", now);

        
      
    }
    return 0;
}
