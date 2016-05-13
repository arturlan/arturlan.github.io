//
//  main.m
//  Unit-1-Exercise
//
//  Created by Artur Lan on 7/11/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

struct shape {
char typeOfShape[256];
char color[256];
};


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        int i;

        //first exercise
        
//        for (int i = 1; i <= 10; i++) {
//            NSLog(@"%d", i);
//        }
        
        //second exercise
        
//        while (i <= 9) {
//            i++;
//            NSLog(@"%d", i);
//        }
        //third exercise
        
//        int count;
//        NSLog(@"Put any number:");
//        scanf("%d", &count);
//        
//        for (i = 1; i <= count; i++) {
//            NSLog(@"%d", i);
//        }
        
        //fourth exercise
//        
//        NSLog(@"Put any number and i will print only even numbers");
//        scanf("%d", &count);
//        
//        for (i = 0; i <= count; i+=2) {
//                NSLog(@"%d", i);
        
        
//        NSLog(@"Put any number and i will print only even numbers");
//        scanf("%d", &count);
//        
//        for (i = 1; i <= count; i++) {
//            if (i % 2 == 0) {
//                NSLog(@"%d", i);
//            }
//        }
        
        //Write a program that prints the sum of 1 through 10 using a loop.
//        int sum = 0;
//        for (i = 0; i <= 10; i++) {
//            sum = sum + i;
//            NSLog(@"%d", sum);
//        }

        //Write a program that takes in an int n and prints the sum of the numbers 1 through n using a loop.
        
//        int sum = 0;
//        
//        NSLog(@"Put any number");
//        scanf("%d", &count);
//        for (i = 0; i <= count; i++) {
//            sum = sum + i;
//            NSLog(@"%d", sum);
//        }
        
       
        //Write a program that takes in an int n and a String s and prints out s on its own line, n times. If n is negative, print "" (that is print an empty sring).
        
//        int i;
//        int count;
//        char word[256];
//        
//        NSLog(@"Put any number and any word");
//        scanf("%d %s", &count, word);
//        
//        for (i = 0; i < count; i++) {
//            if (i <= 0) {
//                NSLog(@"");
//            } else {
//                NSLog(@"%s", word);
//            }
//        }

        //Modify the method to print out the string concatenated with itself n times.

//        int i;
//        int count;
//        char word[256];
//        
//        NSLog(@"Put any number and any word");
//        scanf("%d %s", &count, word);
//        
//        for (i = 0; i < count; i++) {
//            if (i <= 0) {
//                NSLog(@"");
//            } else {
//                printf("%s", word);
//            }
//        }
        //Write a program that prints the first ten Fibonnaci numbers.
        
//        int first = 0;
//        int second = 1;
//        int next;
//        
//        for (int i = 0; i <= 10; i++ ) {
//            if (i <= 1) {
//                next = i;
//            } else {
//                next = first + second;
//                first = second;
//                second = next;
//                
//            }
//            NSLog(@"%d", next);
//        }

        //Modify the program to sum the first ten Fibonnaci numbers.
        
//        int first = 0;
//        int second = 1;
//        int next;
//        int sum;
//        
//        for (int i = 0; i <= 10; i++ ) {
//            if (i <= 1) {
//                next = i;
//            } else {
//                next = first + second;
//                first = second;
//                second = next;
//                
//            }
//            sum += next;
//            NSLog(@"%d", sum);
//        }
        
        //Modify the program to take in an int n and sum the first n Fibonnaci numbers.
        
//        int first = 0;
//        int second = 1;
//        int next;
//        int sum;
//        int count;
//        
//        NSLog(@"Enter a number of terms");
//        scanf("%d", &count);
//        
//        for (int i = 0; i <= count; i++ ) {
//            if (i <= 1) {
//                next = i;
//            } else {
//                next = first + second;
//                first = second;
//                second = next;
//                
//            }
//            sum += next;
//            NSLog(@"%d", sum);
//        }
        
        //Write a program that stores information about a shape in a struct called shape. The struct should hold information about the type of shape it is and it's color.
        
//        struct shape detail;
//        
//        NSLog(@"Enter a type of shape and color");
//        scanf("%s %s", &detail.typeOfShape, &detail.color);
//        
//        NSLog(@"The figure has shape %s and color %s", detail.typeOfShape, detail.color);
        
        //Write a program that asks the user to type an integer and writes "YOU WIN" if the value is between 56 and 78 (both included). In the other case it writes "YOU LOSE".
        
//        int i;
//        NSLog(@"Type an integer");
//        scanf("%d", &i);
//        
//        if (i >= 56 && i <= 78) {
//            NSLog(@"YOU WIN");
//        } else {
//            NSLog(@"YOU LOSE");
//        }
        
        //Write a program that asks the user to type the width and the height of a rectangle and then outputs to the screen the area and the perimeter of that rectangle.
//        int width;
//        int height;
//        int area;
//        
//        NSLog(@"Enter width and height");
//        scanf("%d %d", &width, &height);
//        
//        area = 2*(width + height);
//        NSLog(@"Area of rectangle is %d sq.feet", area);
        
        //Write a program which accepts five numbers from user input and then outputs how many numbers were read and the minium and maximum value of all the numbers.

        
        int arr[256];
        
        printf("Enter five numbers:");

        
        for (int i = 0; i < 5; i++) {
            scanf("%d", (arr + i));
            if (arr[i] < 0) {
                printf("%d", arr[i]);
            }
        }
        
    }
    return 0;
}
