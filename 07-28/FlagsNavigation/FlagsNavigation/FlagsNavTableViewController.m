//
//  FlagsNavTableViewController.m
//  FlagsNavigation
//
//  Created by Artur Lan on 7/28/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "FlagsNavTableViewController.h"

@interface FlagsNavTableViewController ()

@property (nonatomic) NSArray *flags;

@end

@implementation FlagsNavTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"World flags";
    
    self.flags = @[
                   @"Anguilla",
                   @"Antigua and Barbuda",
                   @"Argentina",
                   @"Aruba",
                   @"Bahamas",
                   @"Barbados",
                   @"Belize",
                   @"Bermuda",
                   @"Bolivia",
                   @"Bonaire",
                   @"Bouvet Island",
                   @"Brazil",
                   @"Canada",
                   @"Cayman Islands",
                   @"Chile",
                   @"Colombia",
                   @"Costa Rica",
                   @"Cuba",
                   @"Curacao",
                   @"Dominica",
                   @"Dominican Republic",
                   @"Ecuador",
                   @"El Salvador",
                   @"Falkland Islands",
                   @"French Guiana",
                   @"Grenada",
                   @"Guadeloupe",
                   @"Guatemala",
                   @"Guyana",
                   @"Haiti",
                   @"Honduras",
                   @"Jamaica",
                   @"Martinique",
                   @"Mexico",
                   @"Montserrat",
                   @"Nicaragua",
                   @"Panama",
                   @"Paraguay",
                   @"Peru",
                   @"Puerto Rico",
                   @"Saint Barthelemy",
                   @"Saint Kitts",
                   @"Saint Lucia",
                   @"Saint Martin",
                   @"Saint Pierre and Miquelon",
                   @"Saint Vincent and the Grenadines",
                   @"Sint Maarten",
                   @"South Georgia and the South Sandwich Islands",
                   @"Suriname",
                   @"Trinidad and Tobago",
                   @"Turks and Caicos Islands",
                   @"United States of America"
                   ];
    
    
    

}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"preparing");
    
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSString *countryName = [self.flags objectAtIndex:indexPath.row];
    
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.flags.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"flagsOfCountries" forIndexPath:indexPath];
    
//    WFCountry *country = [self.countries objectAtIndex:indexPath.row];
//    
//    // lowercase the country name
//    NSString *imageName = [country.name lowercaseString];
//    
//    //replace the " " with "_"
//    imageName = []
    cell.textLabel.text = self.flags[indexPath.row];
    
    return cell;
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
