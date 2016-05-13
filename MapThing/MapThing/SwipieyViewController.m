//
//  SwipieyViewController.m
//  MapThing
//
//  Created by Artur Lan on 2/18/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

#import "SwipieyViewController.h"

@interface SwipieyViewController ()

@end

@implementation SwipieyViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupGestureRecognizers];
}

- (void)setupGestureRecognizers {
    
    UISwipeGestureRecognizer *leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:leftSwipe];
    [self.view addGestureRecognizer:rightSwipe];
    [self.view addGestureRecognizer:downSwipe];

    
    
}

- (void)handleSwipe:(UISwipeGestureRecognizer *)gesture {
    switch (gesture.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case UISwipeGestureRecognizerDirectionRight:
            self.view.backgroundColor = [UIColor orangeColor];

            break;
        case UISwipeGestureRecognizerDirectionDown:
            self.view.backgroundColor = [UIColor blueColor];

            break;
            
            
        default:
            break;
    }
}
@end
