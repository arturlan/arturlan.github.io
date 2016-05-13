//
//  ViewController.m
//  ColoringBook2
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "ColorPickerViewController.h"
#import "ColorPickerViewControllerDelegate.h"

@interface ViewController () <ColorPickerViewControllerDelegate>

@property (nonatomic) UIButton *selectedButton;

@end

@implementation ViewController

- (IBAction)coloringItemTapped:(UIButton *)sender {
    
    self.selectedButton = sender;
    
    ColorPickerViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ColorPickerViewController"];
    
    vc.delegate = self;
    
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)colorPickerViewController:(ColorPickerViewController *)viewController didPickColor:(UIColor *)color {
    
    self.selectedButton.backgroundColor = color;
}


@end
