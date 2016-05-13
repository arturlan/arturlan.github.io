//
//  ColorPickerViewController.m
//  ColorPicker
//
//  Created by Artur Lan on 9/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ColorPickerViewController.h"

@interface ColorPickerViewController ()

@end

@implementation ColorPickerViewController


- (IBAction)redButtonTapped:(id)sender {
    
    UIColor *color = [UIColor redColor];
    [self.delegate pickColor:color];

}

- (IBAction)yellowButt3onTapped:(id)sender {
    
    UIColor *color = [UIColor yellowColor];
    [self.delegate pickColor:color];

}

- (IBAction)blueButtonTapped:(id)sender {
    
    UIColor *color = [UIColor blueColor];
    [self.delegate pickColor:color];

}


@end
