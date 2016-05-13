//
//  main.m
//  Sorting
//
//  Created by Artur Lan on 6/14/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        int array[100], n, c, d, swap;
        
        printf("Enter number of elements\n");
        scanf("%d", &n);
        
        printf("Enter %d integers\n", n);
        
        for (c = 0; c < n; c++)
            scanf("%d", &array[c]);
        
        for (c = 0 ; c < ( n - 1 ); c++)
        {
            for (d = 0 ; d < n - c - 1; d++)
            {
                if (array[d] > array[d+1]) /* For decreasing order use < */
                {
                    swap       = array[d];
                    array[d]   = array[d+1];
                    array[d+1] = swap;
                }
            }
        }
        
        printf("Sorted list in ascending order:\n");
        
        for ( c = 0 ; c < n ; c++ )
            printf("%d\n", array[c]);
        


//        // Bubble Algorithm
//        for(int x = 0; x < size; x++)
//        {
//            for(int y = 0; y < size - 1; y++)
//            {
//                if(arr[y] > arr[y+1])
//                {
//                    int temp = arr[y+1];
//                    arr [y+1] = arr[y];
//                    arr [y] = temp;
//                }
//            }
//        }
        
    }
    return 0;
}
