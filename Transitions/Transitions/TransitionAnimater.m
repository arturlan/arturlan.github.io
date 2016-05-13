//
//  TransitionAnimater.m
//  Transitions
//
//  Created by Artur Lan on 11/14/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "TransitionAnimater.h"

@implementation TransitionAnimater

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    
    //fade transition
    /*toView.alpha = 0.0;
    
    [[transitionContext containerView] addSubview:fromView];
    [[transitionContext containerView] addSubview:toView];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration animations:^{
        toView.alpha = 1.0;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];

    }];*/
    
    //scale transition
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    
    if (self.isPresenting) {
        
        
        [[transitionContext containerView] addSubview:fromView];
        [[transitionContext containerView] addSubview:toView];


        toView.transform = CGAffineTransformMakeScale(0.0, 0.0);

        [UIView animateWithDuration:duration animations:^{
            toView.transform = CGAffineTransformMakeScale(1.0, 1.0);
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
            
        }];
        
    }else {
        
        [[transitionContext containerView] addSubview:toView];
        [[transitionContext containerView] addSubview:fromView];
        
        fromView.alpha = 0.0;
        [UIView animateWithDuration:duration animations:^{
            fromView.transform = CGAffineTransformMakeScale(0.0, 0.0);
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
            
        }];
    }

    
    
    
    
}

@end
