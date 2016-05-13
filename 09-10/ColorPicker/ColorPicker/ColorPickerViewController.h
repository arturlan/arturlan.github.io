//
//  ColorPickerViewController.h
//  ColorPicker
//
//  Created by Artur Lan on 9/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPickerProtocol.h"

@interface ColorPickerViewController : UIViewController

@property (nonatomic, weak) id <ColorPickerProtocol> delegate;

@end
