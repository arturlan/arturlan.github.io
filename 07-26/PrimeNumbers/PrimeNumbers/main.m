//
//  main.m
//  PrimeNumbers
//
//  Created by Artur Lan on 7/26/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger sum = 0;
        NSInteger maxBound = 2000000;
        
        for (NSInteger i = 0; i < maxBound; i++) {
            BOOL isPrime = YES;
            for (NSInteger j = 0; j < sqrt(i) && j < i; j++) {
                if (i % j == 0) {
                    isPrime = NO;
                    break;
                }
            }
            if (isPrime) {
                sum += i;
            }
        }
        NSLog(@"%lu", sum);
    }
    return 0;
}
