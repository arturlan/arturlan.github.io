//
//  SecondViewController.m
//  Transitions
//
//  Created by Artur Lan on 11/14/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (IBAction)secondViewControllerButton:(UIButton *)sender
{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
