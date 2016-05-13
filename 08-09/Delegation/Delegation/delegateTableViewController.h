//
//  delegateTableViewController.h
//  Delegation
//
//  Created by Artur Lan on 8/9/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class delegateTableViewController;

@protocol department <NSObject>

- (void)didSelectWith:(delegateTableViewController *)controller depart:(NSString *)department;

@end

@interface delegateTableViewController : UITableViewController

@property (nonatomic, weak) id<department>delegate;

@end
