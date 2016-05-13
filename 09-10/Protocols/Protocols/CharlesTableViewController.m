//
//  CharlesTableViewController.m
//  Protocols
//
//  Created by Artur Lan on 9/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "CharlesTableViewController.h"
#import "JackieCommunicationProtocol.h"

@interface CharlesTableViewController () <JackieCommunicationProtocol>

@end

@implementation CharlesTableViewController

- (void)jackieSayWhat:(NSString *)whatJackieSaid {
    
    NSLog(@"%@", whatJackieSaid);
    
}
@end
