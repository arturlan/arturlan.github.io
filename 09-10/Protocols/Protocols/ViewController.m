//
//  ViewController.m
//  Protocols
//
//  Created by Artur Lan on 9/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "JackieCommunicationProtocol.h"
#import "JackieViewController.h"

@interface ViewController () <JackieCommunicationProtocol>

@end

@implementation ViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    JackieViewController *viewController = segue.destinationViewController;
    
    viewController.delagate = self;
    
    
}

#pragma mark - JackieCommunicationProtocol


- (void)jackieSayWhat:(NSString *)whatJackieSaid {
    
    NSLog(@"%@", whatJackieSaid);
    
}

@end

