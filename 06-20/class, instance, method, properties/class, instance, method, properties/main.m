//
//  main.m
//  class, instance, method, properties
//
//  Created by Artur Lan on 6/20/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>



#import <Foundation/Foundation.h>


@interface Fraction : NSObject

- (void)setNumerator:(int)n;
- (void)setDenominator:(int)d;
- (void)printSelf;
- (void)result;

@end


@implementation Fraction {
    int numerator;
    int denominator;
}

// public (declared in interface)
- (void)setNumerator:(int)n {
    NSLog(@"setting numerator: %d", n);
    numerator = n;
}

- (void)setDenominator:(int)d {
    NSLog(@"setting denominator: %d", d);
    denominator = d;
}

- (void)printSelf {
    // "n/d"
    NSString *description = [NSString stringWithFormat:@"%d/%d", numerator, denominator];
    NSLog(@"%@", description);
}

- (void)result {
    
    float result = (float)numerator/denominator;
    NSLog(@"%f", result);
}
// private (not declared in interface)
- (void)doAnotherThing {
    // do a thing
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *f = [[Fraction alloc] init];
        [f setNumerator:5];
        [f setDenominator:3];
        
        [f printSelf];
        [f result];
        
    }
    return 0;
}

