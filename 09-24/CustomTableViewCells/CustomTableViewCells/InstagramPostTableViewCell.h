//
//  InstagramPostTableViewCell.h
//  CustomTableViewCells
//
//  Created by Artur Lan on 9/24/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstagramPostTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *likes;
@property (weak, nonatomic) IBOutlet UILabel *tagcount;

@end
