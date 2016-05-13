//
//  ColorPickerViewController.h
//  ColoringBook2
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPickerViewControllerDelegate.h"

@interface ColorPickerViewController : UIViewController

@property (nonatomic, weak) id <ColorPickerViewControllerDelegate> delegate;

@end
