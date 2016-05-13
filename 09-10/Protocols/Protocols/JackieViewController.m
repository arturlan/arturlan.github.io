//
//  JackieViewController.m
//  Protocols
//
//  Created by Artur Lan on 9/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "JackieViewController.h"

@interface JackieViewController ()

@end

@implementation JackieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Jackie";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)topButtonTapped:(id)sender {
    
    NSString *phrase = @"Fear is the mind killer";
    
    [self.delagate jackieSayWhat:phrase];
}
- (IBAction)bottomButtonTapped:(id)sender {
    
    
    NSString *phrase = @"Birds are actually reptiles, technically speaking";
    
    [self.delagate jackieSayWhat:phrase];

}

@end
