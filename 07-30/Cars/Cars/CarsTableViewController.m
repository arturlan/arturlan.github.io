//
//  CarsTableViewController.m
//  Cars
//
//  Created by Artur Lan on 7/30/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "CarsTableViewController.h"

@interface CarsTableViewController ()

@property (nonatomic) NSDictionary *cars;

@end

@implementation CarsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.cars = @{
                  @"Ford" : @[@"Mustang", @"Fiesta", @"Taurus", @"F-150"],
                  @"Honda" : @[@"Civic", @"Accord", @"CRV", @"Cross Tour"],
                  @"Daewoo" : @[@"Veritas", @"Statesmen", @"Aradia", @"Prince"],
                  @"Toyota" : @[@"Camry", @"Prius", @"Corola", @"Sequoya", @"Matrix"],
                  @"Mazda" : @[@"Miata", @"Protege", @"RX-7", @"MPV"]
                  };

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    NSArray *keys = [self.cars allKeys];
    
    
    return keys.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSArray *keys = [self.cars allKeys];
    NSString *key = keys[section];
    NSArray *values = [self.cars objectForKey:key];
    
    return values.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cars" forIndexPath:indexPath];
    
    NSLog(@"%@",indexPath);
    
    NSArray *keys = [self.cars allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *arrayOfCarNames = [self.cars objectForKey:key];
    
    NSString *carName = [arrayOfCarNames objectAtIndex:indexPath.row];
    
    
    cell.textLabel.text = carName;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *keys = [self.cars allKeys];
    NSString *key = keys[section];
    
    
    return key;
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
