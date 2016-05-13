//
//  ViewController.m
//  BungalowCoreData
//
//  Created by Artur Lan on 10/3/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Snack.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *flavorTextField;
@property (weak, nonatomic) IBOutlet UITextField *caloriesTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)saveNewSnack {
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;

    
    Snack *newSnack = [NSEntityDescription insertNewObjectForEntityForName:[Snack entityName] inManagedObjectContext:delegate.managedObjectContext];
    
    newSnack.name = @"Poptart";
    newSnack.calories = @420;
    newSnack.flavor = @"cherry";
    
    [delegate saveContext];
    
}
- (IBAction)createSnackTapped:(UIButton *)sender {
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    
    Snack *newSnack = [NSEntityDescription insertNewObjectForEntityForName:[Snack entityName] inManagedObjectContext:delegate.managedObjectContext];
    
    newSnack.name = self.nameTextField.text;
    newSnack.calories = [NSNumber numberWithInteger:[self.caloriesTextField.text integerValue]];
    newSnack.flavor = self.flavorTextField.text;
    
    [delegate saveContext];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
