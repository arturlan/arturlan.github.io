//
//  ViewController.m
//  SlideBar
//
//  Created by Artur Lan on 10/11/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButtpn;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self flashOn:_myButtpn];
}

- (void)flashOff:(UIView *)v
{
    [UIView animateWithDuration:.05 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        v.alpha = 0.8;  //don't animate alpha to 0, otherwise you won't be able to interact with it
    } completion:^(BOOL finished) {
        [self flashOn:v];
    }];
}

- (void)flashOn:(UIView *)v
{
    [UIView animateWithDuration:.05 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        v.alpha = 1;
    } completion:^(BOOL finished) {
        [self flashOff:v];
    }];
}
@end
