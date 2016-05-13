//
//  ViewController.m
//  ColorPicker
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import <iOS-Color-Picker/FCColorPickerViewController.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *color;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showColorPicker:(UIButton *)sender {
    
    FCColorPickerViewController *vc = [[FCColorPickerViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

@end
