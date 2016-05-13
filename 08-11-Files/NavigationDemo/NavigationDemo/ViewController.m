//
//  ViewController.m
//  NavigationDemo
//
//  Created by Artur Lan on 8/11/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numbers;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.numbers.text = [NSString stringWithFormat:@"%lu", self.navigationController.viewControllers.count];
    
    
}
- (IBAction)pushBottonTapped:(id)sender {
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"ViewControllerIndentifier"];
    
    [self.navigationController pushViewController:viewController animated:YES];
    
    
    NSLog(@"%lu", self.navigationController.viewControllers.count);

}


- (IBAction)pushBack:(id)sender {
    
    
    [self.navigationController popViewControllerAnimated:YES];
}


@end
