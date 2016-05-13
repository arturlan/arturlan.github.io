//
//  ColorPickerViewControllerDelegate.h
//  ColoringBook2
//
//  Created by Artur Lan on 9/13/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ColorPickerViewController;

@protocol ColorPickerViewControllerDelegate <NSObject>

- (void)colorPickerViewController:(ColorPickerViewController *)viewController
                     didPickColor:(UIColor *)color;

@end
