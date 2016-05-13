//
//  PKPokemonTableViewController.m
//  PKTableViews
//
//  Created by Artur Lan on 7/26/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "PKPokemonTableViewController.h"

@interface PKPokemonTableViewController ()

@property (nonatomic) NSMutableArray *tableData;

@end

@implementation PKPokemonTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
       NSArray *arr = @[
                       @"dog",
                       @"cat",
                       @"baby",
                       @"hamster",
                       @"turtle",
                       @"jalapeno",
                       @"dorito",
                       @"bahama",
                       @"shirt",
                       @"cheesburg",
                       @"paradise",
                       @"sweatshirts"
                       ];
    
    NSMutableArray *tmp = [NSMutableArray new];
    for (int i = 0; i < 100; i++) {
        [tmp addObjectsFromArray:arr];
    }
    
    self.tableData = [NSMutableArray arrayWithArray:tmp];
    NSLog(@"%lu", self.tableData.count);
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.tableData.count; //as many as needed
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];
    
    NSString *pokemonName = self.tableData[indexPath.row];
    NSLog(@"%d %@", indexPath.row, pokemonName);
    // Configure the cell...
    cell.textLabel.text = pokemonName;
    
    
    return cell;
}

@end
