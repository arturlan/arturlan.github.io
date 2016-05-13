//
//  main.m
//  functions cont
//
//  Created by Artur Lan on 6/20/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int sizeOfArray;

void reverse (int array[], int reversed[], int sizeOfArray) {
    for (int j = 0, j < sizeOfArray, j++){
        reversed[sizeOfArray - j - 1] = array[j];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        
        int array[] = {1, 2, 3, 4, 5, 6, 7, 8};
        int numSizeOfArray = sizeof(sizeOfArray) / sizeof(int);
        int reversedArray[numSizeOfArray];
        reverse(array, numSizeOfArray, reversedArray);
        for (int i = 0; i < numSizeOfArray; i++){
            printf("%d", reversedArray);
        }
        
        
        
        
        
    }
    return 0;
}
