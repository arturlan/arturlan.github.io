//
//  ViewController.m
//  SaveMyToggle
//
//  Created by Artur Lan on 9/29/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

//global constant
#define LanguagePreferenceKey @"LanguagePreferenceKey"
//same as
//NSString *string = @"LanguagePreferenceKey";

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@end

@implementation ViewController
- (IBAction)mySwitchToggled:(UISwitch *)sender {
    [[NSUserDefaults standardUserDefaults] setBool:sender.on forKey:LanguagePreferenceKey];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mySwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:LanguagePreferenceKey];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
