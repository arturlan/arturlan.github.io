//
//  SnackTableViewController.m
//  BungalowCoreData
//
//  Created by Artur Lan on 10/3/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "SnackTableViewController.h"
#import "AppDelegate.h"
#import "Snack.h"

@interface SnackTableViewController () <NSFetchedResultsControllerDelegate>

@property (nonatomic) NSFetchedResultsController *fetchResultsController;

@end

@implementation SnackTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    // create the request
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:[Snack entityName]];
    
    // create a sort descriptor sorting by flavor descending
    NSSortDescriptor *flavorSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"flavor" ascending:NO];
    
    //set the sortDescriptor on the fetch
    fetchRequest.sortDescriptors = @[ flavorSortDescriptor ];
    
    //create the object to perform the fetch request
    self.fetchResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:delegate.managedObjectContext sectionNameKeyPath:nil cacheName:nil];
    
    //atually perform the fetch
    [self.fetchResultsController performFetch:nil];
    
    self.fetchResultsController.delegate = self;
    
    [self.tableView reloadData];
    
    //loop and print
    for (Snack *snack in self.fetchResultsController.fetchedObjects) {
        NSLog(@"%@", snack.flavor);
    }}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.fetchResultsController.fetchedObjects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SnackCellIdentifier" forIndexPath:indexPath];
    
    Snack *snack = self.fetchResultsController.fetchedObjects[indexPath.row];
    
    cell.textLabel.text = snack.name;
    cell.detailTextLabel.text = snack.flavor;
    
    return cell;
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(nonnull id)anObject atIndexPath:(nullable NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(nullable NSIndexPath *)newIndexPath
{
    [self.tableView reloadData];
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
