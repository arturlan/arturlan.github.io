//
//  TouchableView.h
//  Protocol2.0
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyDelegate.h"

@interface TouchableView : UIView

@property (nonatomic, weak) id <MyDelegate> delegate;

@end
