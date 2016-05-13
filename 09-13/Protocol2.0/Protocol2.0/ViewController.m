//
//  ViewController.m
//  Protocol2.0
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "MyDelegate.h"
#import "TouchableView.h"

@interface ViewController () <MyDelegate>

@property (weak, nonatomic) IBOutlet TouchableView *myCustomView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myCustomView.delegate = self;
}

- (void)touchesBeganInView {
    
    NSLog(@"touches began");
}

- (void)touchesEndInView {
    
    NSLog(@"touches end");
}



@end
