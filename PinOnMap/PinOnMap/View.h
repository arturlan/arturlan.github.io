//
//  View.h
//  PinOnMap
//
//  Created by Artur Lan on 11/8/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView

@property (weak, nonatomic) IBOutlet UILabel *firstLable;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *thirdLabel;
@property (weak, nonatomic) IBOutlet UILabel *fourthLabel;
@property (weak, nonatomic) IBOutlet UILabel *fifthLabel;

@property (weak, nonatomic) IBOutlet UIView *customView;

@end
