//
//  MyDelegate.h
//  Protocol2.0
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyDelegate <NSObject>

- (void)touchesBeganInView;

- (void)touchesEndInView;

@end
