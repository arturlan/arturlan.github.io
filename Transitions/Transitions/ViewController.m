//
//  ViewController.m
//  Transitions
//
//  Created by Artur Lan on 11/14/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "TransitionAnimater.h"
@interface ViewController () <UIViewControllerTransitioningDelegate, UINavigationControllerDelegate>

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.delegate = self;
    
}

    //navigation controller
-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
{
    TransitionAnimater *animator = [[TransitionAnimater alloc] init];

    if (operation == UINavigationControllerOperationPush) {
        
        animator.presenting = YES;
        return animator;
    }else {
        animator.presenting = NO;
        return animator;
    }
    return nil;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    segue.destinationViewController.transitioningDelegate = self;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    TransitionAnimater *animator = [[TransitionAnimater alloc] init];
    
    animator.presenting = YES;
    return animator;
    
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [[TransitionAnimater alloc] init];
}
@end
