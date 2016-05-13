//
//  TouchableView.m
//  Protocol2.0
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "TouchableView.h"

@implementation TouchableView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
   
    [super touchesBegan:touches withEvent:event];
    
    [self.delegate touchesBeganInView];
    
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [super touchesEnded:touches withEvent:event];
    

    if ([self.delegate respondsToSelector:@selector(touchesEndInView)]) {
        
        [self.delegate touchesEndInView];

    }
}


@end
