//
//  main.m
//  scanf function
//
//  Created by Artur Lan on 6/9/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*
        int age;
        int favoriteNumber;
        printf("What is your age?");
        scanf("%d", &age);
        printf("What is your favorite number?");
        scanf("%d", &favoriteNumber);
        printf("My age is %d and my favorite number is %d", age, favoriteNumber);
        */
        
        int i;
        int j;
        int f;
        printf("add three numbers");
        scanf("%d%d%d", &i , &j, &f);
        
        float result = ((i + j +f)/3);
        
        printf("%f", result);
        
    }
    return 0;
}
