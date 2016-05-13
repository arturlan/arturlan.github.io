//
//  ColorPickerViewController.m
//  ColoringBook2
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ColorPickerViewController.h"

@interface ColorPickerViewController ()
@property (weak, nonatomic) IBOutlet UIView *colorPreviewView;

//color

@property (nonatomic) float redColor;
@property (nonatomic) float greenColor;
@property (nonatomic) float blueColor;

@property (nonatomic) UIColor *currentColor;


@end

@implementation ColorPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.redColor = 0.5;
    self.greenColor = 0.5;
    self.blueColor = 0.5;
}

- (IBAction)redSliderValueChanged:(UISlider *)sender {
    self.redColor = sender.value;
    [self updatePreviewColor];
}

- (IBAction)greenSliderValueChanged:(UISlider *)sender {
    self.greenColor = sender.value;
    [self updatePreviewColor];
    
}


- (IBAction)blueSliderValueChanged:(UISlider *)sender {
    self.blueColor = sender.value;
    [self updatePreviewColor];
}

- (IBAction)setColorButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate colorPickerViewController:self didPickColor:self.currentColor];
}

- (void)updatePreviewColor {
    self.currentColor = [UIColor colorWithRed:self.redColor green:self.greenColor blue:self.blueColor alpha:1.0];
    self.colorPreviewView.backgroundColor = self.currentColor;
    
}

@end
