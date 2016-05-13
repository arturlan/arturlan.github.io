//
//  ViewController.m
//  TimeProject
//
//  Created by Artur Lan on 8/15/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timerLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timerLable.text = @"0";
    
    // equivalent of running [self timerFired] every 1.0 seconds
    NSTimer *timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerFired:) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

- (void)timerFired: (NSTimer *)timer {
    NSInteger currentNumber = [self.timerLable.text integerValue];
    NSInteger nextNumber = currentNumber + 1;
    
    self.timerLable.text = [NSString stringWithFormat:@"%lu", nextNumber];
    
    if (nextNumber == 10) {
        [timer invalidate]; 
    }
    
    
    NSLog(@"timer fired");
}

@end
