//
//  main.m
//  07-12
//
//  Created by Artur Lan on 7/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Car *firstCar = [[Car alloc] init];
        
        firstCar.model = @"Bat mobile";
        [firstCar colorOfCar];
        [firstCar transmission];
        
    }
    return 0;
}
