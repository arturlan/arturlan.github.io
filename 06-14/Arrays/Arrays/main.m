//
//  main.m
//  Arrays
//
//  Created by Artur Lan on 6/14/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //while loop
        int count = 99;
        int left = count - 1;
        while (count >= 0){
            printf("%d bottles of beer on the wall, %d bottles of beer.\nTake one down, pass it around, %d bottles of beer on the wall...\n", count, count, left);
            count = count - 1;
            left = count - 1;
            if (count == 0){
            printf("No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall...\n");
                
                count = 99;
            }
            
        }
        
    }
    return 0;
}
