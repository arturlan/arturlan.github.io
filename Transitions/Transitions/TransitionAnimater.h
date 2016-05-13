//
//  TransitionAnimater.h
//  Transitions
//
//  Created by Artur Lan on 11/14/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TransitionAnimater : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, getter=isPresenting) BOOL presenting;

@end
