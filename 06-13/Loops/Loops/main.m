//
//  main.m
//  Loops
//
//  Created by Artur Lan on 6/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        //first task
//        int count = 10;
//        while (count > 0) {
//            printf("%d\n", count);
//            count = count - 1;
//        }
//        
//        //second task
//        int pro = 100;
//        while (pro > 10) {
//            printf("%d\n", pro);
//            pro = pro - 5;
//        }
//        while (pro > 0) {
//            printf("%d\n", pro);
//            pro = pro - 1;
//        }
//        //third task
//        int x = 100;
//        int eat;
//        printf("%d m&ms are left\n", x);
//        while (x > 0) {
//            printf("eat how many?");
//            scanf ("%d", &eat);
//            x = (x - eat);
//            printf("%d m&ms are left\n", x);
//            continue;
//        }
//        printf("you eat all the m&ms");
        
//        //fourth task
//        
//        int specNumber;
//        scanf("%d", &specNumber);
//        
//        for(int i = 0; i <= specNumber; i+=1){
//            printf("%d\n",i);
//        }
        
//        //fifth task
//        
//        int inputValue;
//        int maxValue;
//        int increment;
//        printf("Enter input value, max value and increment");
//
//        scanf("%d%d%d", &inputValue, &maxValue, &increment);
//        for(int i = inputValue; i <= maxValue; i += increment){
//            printf("%d\n", i);
//        }
//        
//        //final task
        
//        for(int i = 1; i <= 100; i += 1) {
//            if (i % 15 == 0) {
//                printf("fizzbuzz\n");
//                continue;
//            } else if (i % 3 == 0) {
//                printf("fizz\n");
//                continue;
//            } if (i % 5 == 0) {
//                printf("buzz\n");
//                continue;
//            }
//            printf("%d\n", i);
//            
//        }
        
        int x;
        for (x = 1; x <= 100; x++){
            printf("%d\n", x);
        }
        for (x = 99 ; x > 0; x--){
            printf("%d\n", x);
        }

    }
    return 0;
}