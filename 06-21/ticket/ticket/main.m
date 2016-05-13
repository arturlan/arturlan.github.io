//
//  main.m
//  ticket
//
//  Created by Artur Lan on 6/21/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cat : NSObject

@property (nonatomic) NSString *name;

@end

@implementation Cat

@end

@interface Dog : NSObject

- (void)chaseCat:(Cat*)cat;

@property (nonatomic) NSString *name;

@end

@implementation Dog

- (void)chaseCat:(Cat*)cat{
    NSLog(@"%@ chased %@!", self.name, cat.name);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Cat *fluffy = [[Cat alloc] init];
        fluffy.name = @"Fluffy";
        
        Dog *rover = [[Dog alloc] init];
        rover.name = @"Rover";
        
        [rover chaseCat:fluffy];
        
    }
    return 0;
}
