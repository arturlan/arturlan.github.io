//
//  ABBButon.m
//  CustomButtonSubclass
//
//  Created by Artur Lan on 9/27/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ABBButon.h"

@implementation ABBButon

- (instancetype)init {
    if (self = [super init]) {
        
        UIColor *customPink = [UIColor colorWithRed:253.0/255.0 green:92/255.0 blue:99/255.0 alpha:1.0];
        self.backgroundColor = customPink;
        return self;
    }
    return nil;
}

//called anytime an instnce is initialized from  Interface Builder
- (void)awakeFromNib {
    [super awakeFromNib];
    
    UIColor *customPink = [UIColor colorWithRed:253.0/255.0 green:92/255.0 blue:99/255.0 alpha:1.0];
    self.backgroundColor = customPink;
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.layer.cornerRadius = 5;
}

@end
