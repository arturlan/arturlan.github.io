//
//  ViewController.m
//  Layouts
//
//  Created by Artur Lan on 7/21/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)buttonTapped:(id)sender {
    
    self.textLabel.text = self.randomPhrase;
}

- (NSString *)randomPhrase {
    
    NSArray *phrases = @[
        @"The indices are the time in minutes past trade opening time, which was",
        @"Write an efficient algorithm for computing the best profit I could have made from ",
        @"you must buy before you sell. You may not buy and sell in the same "
        
                         ];
    
    NSInteger index = (NSInteger)arc4random_uniform(phrases.count);
    NSString *phrase = phrases[index];
    return phrase;
}

@end
