//
//  main.m
//  Exercises
//
//  Created by Artur Lan on 1/10/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>


int main() {
    // Try 100 different values of n
    for (int n = 0; n < 10000; n += 100) {
        
        // Generate some data to supply to the method
        int data[n];
        for (int i = 0; i < n; i++) {
            data[i] = i;
        }
        
        NSDate *methodStart = [NSDate date];
        // *** START
        
        // Call the method you want to profile
        hasDuplicates(data, n);
        
        // *** END
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime =
        [methodFinish timeIntervalSinceDate:methodStart];
        printf("%f\n", executionTime);
    }
    return 0;
}




