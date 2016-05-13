//
//  main.m
//  carl
//
//  Created by Artur Lan on 6/11/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>


struct person {
    int age;
    BOOL accompanied;
    BOOL swag;
    int money;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        
//        // justin
//        int justinAge = 18;
//        BOOL justinAccompanied = YES;
//        BOOL justinSwag = NO;
//        int justinMoney = 4;
//        
//        // carl
//        int carlAge = 21;
//        BOOL carlAccompanied = YES;
//        BOOL carlSwag = YES;
//        int carlMoney = 4000;
//        // sheriffs hat
//        
//        // rules
//        int minAge = 21;
//        int buyoff = 50;
        
        struct person justin;
        justin.age = 18;
        justin.accompanied = YES;
        justin.swag = NO;
        justin.money = 4;
        
        struct person carl;
        carl.age = 21;
        carl.accompanied = YES;
        carl.swag = YES;
        carl.money = 4000;
        
        int minAge = 21;
        int buyoff = 50;
        
        
        
        // Boolean logic
        if (carl.age >= minAge && !carl.accompanied) {
            NSLog(@"You can't play this game");
        } else if (!carl.swag) {
            if (carl.money >= buyoff) {
                NSLog(@"welcome");
            } else {
                NSLog(@"You can't play this game");
            }
        } else {
            NSLog(@"welcome");
        }
    }
    return 0;
}
