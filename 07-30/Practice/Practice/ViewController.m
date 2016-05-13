//
//  ViewController.m
//  Practice
//
//  Created by Artur Lan on 7/31/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *unsortedStrings = @[@"Verdana", @"MS San Serif", @"Times New Roman",@"Chalkduster",@"Impact"];
    
    NSArray *sortedStrings =
    [unsortedStrings sortedArrayUsingSelector:@selector(compare:)];
    
    NSLog(@"Unsorted Array : %@",unsortedStrings);
    NSLog(@"Sorted Array : %@",sortedStrings);}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
