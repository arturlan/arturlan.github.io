

//
//  MikesTVC.m
//  CustomTableViewCells
//
//  Created by Artur Lan on 9/24/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "MikesTVC.h"
#import "APIManager.h"
#import "ArtursInstagramProject.h"
#import "InstagramPostTableViewCell.h"

@interface MikesTVC ()


@property (nonatomic) NSMutableArray *searchResults;

@end

@implementation MikesTVC

- (void)fetchInstagramData {
    // creat a Instagram URL
    NSURL *instagramURL = [NSURL URLWithString:@"https://api.instagram.com/v1/tags/moscow/media/recent?client_id=ac0ee52ebb154199bfabfb15b498c067"];
    
    [APIManager GETRequestWithURL:instagramURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSArray *result = json[@"data"];
        
        
        self.searchResults = [[NSMutableArray alloc] init];
        
        //looping through the data
        for (NSDictionary *results in result) {
            //create new post from json
            ArtursInstagramProject *post = [[ArtursInstagramProject alloc] initWithJSON:results];
            // add post to array
            [self.searchResults addObject:post];
        }
        
        NSLog(@"%@", json);
        
        [self.tableView reloadData];
    }];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchInstagramData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

  return self.searchResults.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    InstagramPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    ArtursInstagramProject *post = self.searchResults[indexPath.row];
    
    cell.username.text = post.username;
    
    cell.likes.text = [NSString stringWithFormat:@"Like:%ld",post.likeCount];
    cell.tagcount.text = [NSString stringWithFormat:@"Tags:%ld",post.tags.count];
    

    
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
