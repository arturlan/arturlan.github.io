//
//  ViewController.m
//  UITableView
//
//  Created by Artur Lan on 7/25/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *orangeView;
@property (weak, nonatomic) IBOutlet UISlider *blue;
@property (weak, nonatomic) IBOutlet UISlider *green;
@property (weak, nonatomic) IBOutlet UISlider *red;
@property (weak, nonatomic) IBOutlet UISlider *alpha;

@end

@implementation ViewController

- (IBAction)sliderChanged:(UISlider *)sender {
//    NSLog(@"%f", sender.value);
//    self.orangeView.alpha = sender.value;
    
    CGFloat redSlider = self.red.value;
    CGFloat blueSlider = self.blue.value;
    CGFloat greenSlider = self.green.value;
    CGFloat alphaSlider = self.alpha.value;
    
    UIColor *newColor = [UIColor colorWithRed:redSlider green:greenSlider blue:blueSlider alpha:alphaSlider];
    
    self.orangeView.backgroundColor = newColor;
}


@end
