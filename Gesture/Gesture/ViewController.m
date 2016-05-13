//
//  ViewController.m
//  Gesture
//
//  Created by Artur Lan on 11/8/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self addSwipeGesture];
//    [self addPanGesture];
    
    self.myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.myView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:self.myView];
}

- (void)swiping:(UIGestureRecognizer *)gesture {
    NSLog(@"%@", gesture);
}

- (void)addSwipeGesture {
    UISwipeGestureRecognizer *swipeGesture = [[ UISwipeGestureRecognizer alloc] init];
    [swipeGesture addTarget:self action:@selector(swiping:)];
    
    swipeGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeGesture];
}

- (void)addPanGesture {
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    
    [self.view addGestureRecognizer:panGesture];
    
}

- (void)handlePan:(UIPanGestureRecognizer *)gesture {
//    NSLog(@"%ld", (long)gesture.state);
    CGPoint translation = [gesture translationInView:self.view];
    NSLog(@"%@", NSStringFromCGPoint(translation));
}

@end
