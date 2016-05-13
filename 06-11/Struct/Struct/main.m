//
//  main.m
//  Struct
//
//  Created by Artur Lan on 6/11/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

// defenition of the person

struct animal {
    BOOL flies;
    int nr;
    BOOL swim;
    BOOL mammal;
    
};

struct person {
    struct animal pet;
    int height;
    BOOL hasEyes;
    BOOL hasLegs;
    float weight;
    BOOL hasArms;
    char firstInitial;
    char name[256];
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct person jovanny;
        jovanny.firstInitial = 'J';
        jovanny.hasArms = YES;
        
        jovanny.pet.flies = YES;
        
        printf("This is our man ,%c\n", jovanny.firstInitial);
        printf("%c%c can fly 100 feet height.", jovanny.firstInitial, jovanny.pet.flies);
        
    }
    return 0;
}
