//
//  ViewController.m
//  ColorPicker
//
//  Created by Artur Lan on 9/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "ColorPickerProtocol.h"
#import "ColorPickerViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *colors;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.colors = [[NSMutableArray alloc] init];
}

- (void)pickColor:(UIColor *)Color {
    
    self.view.backgroundColor = Color;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ColorPickerViewController *vc = segue.destinationViewController;
    vc.delegate = self;
    
}


@end
