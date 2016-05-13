//
//  ViewController.m
//  LearnAnimation
//
//  Created by Artur Lan on 9/17/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *viewToAnimate;

@end

@implementation ViewController


- (IBAction)animatedButtonTapped:(UIButton *)sender {
    
    CGRect frame = self.viewToAnimate.frame;
    CGSize frameSize = frame.size;
    CGPoint framePosition = frame.origin;
    


    
    CGPoint topLeft = CGPointMake(0, 0);
    CGPoint topRight = CGPointMake(self.view.frame.size.width - frameSize.width, 0);
    CGPoint bottomRight = CGPointMake(topRight.x, self.view.frame.size.height - frameSize.height);
    CGPoint bottomLeft = CGPointMake(0, bottomRight.y);
    
    CGRect firstFrame = CGRectMake(topLeft.x, topLeft.y, frameSize.height, frameSize.height);
    
    CGRect secondFrame = CGRectMake(topRight.x, topRight.y, frameSize.height, frameSize.width);
    
    CGRect thirdFrame = CGRectMake(bottomRight.x, bottomRight.y, frameSize.height, frameSize.width);
    
    CGRect fourthFrame = CGRectMake(bottomLeft.x, bottomLeft.y, frameSize.height, frameSize.width);

    
    
    [UIView animateWithDuration:1.0 animations:^{
        self.viewToAnimate.frame = firstFrame;
    }
    completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1.0 animations:^{
            
            self.viewToAnimate.frame = secondFrame;
        
        } completion:^(BOOL finished) {
           
            
        }];

    }];

    

    
    
//    CGRect newFrame = CGRectMake(self.view.frame.size.width - 100, 200.0, 60.0, 60.0);
//    
//    [UIView animateWithDuration:1.0 animations:^{
//       
//        self.viewToAnimate.frame = newFrame;
//        self.viewToAnimate.layer.cornerRadius = 30.0;
//        self.viewToAnimate.backgroundColor = [UIColor blueColor];
//    
//    }];
//    
}



@end
