//
//  iTunesMusicViewController.m
//  iTunesAPIPlayground
//
//  Created by Artur Lan on 9/20/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "iTunesMusicViewController.h"
#import "APIManager.h"
#import "iTunesMusicResult.h"

@interface iTunesMusicViewController () <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) NSMutableArray *searchResults;

@end

@implementation iTunesMusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.searchTextField.delegate = self;
}

- (void)makeNewiTunesRequestWithSearchTerm:(NSString *)searchTerm
                             callbackBlock:(void(^)())block {
    
    //searchTerm
    
    //url(media=music, term=searchTerm)
    NSString *urlString = [NSString stringWithFormat:@"https://itunes.apple.com/search?media=music&term=%@", searchTerm];
    //encoded url
    NSString *ecodedString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSLog(@"%@", ecodedString);
    
    //convert urlString
    NSURL *url = [NSURL URLWithString:ecodedString];
    
    
    //makethe request
    
    [APIManager GETRequestWithURL:url completionHandler:^(NSData *data, NSURLResponse *respone, NSError *error) {
       
        if (data != nil) {
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@", json);
            
            NSArray *results = [json objectForKey:@"results"];
            self.searchResults = [[NSMutableArray alloc] init];
            for (NSDictionary *result in results) {
                NSString *artistName = [result objectForKey:@"artistName"];
                NSString *albumName = [result objectForKey:@"collectionName"];
                
                iTunesMusicResult *musicObject = [[iTunesMusicResult alloc] init];
                
                musicObject.artist = artistName;
                musicObject.album = albumName;
                
                [self.searchResults addObject:musicObject];
            }
            
            block ();
        }
    }];
    
    
    //do something with data
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.searchResults.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    iTunesMusicResult *currentResult = self.searchResults[indexPath.row];
    
    cell.textLabel.text = currentResult.album;
    cell.detailTextLabel.text = currentResult.album;
    
    return cell;
}


#pragma mark - text field delegate

//user tapped "return key"
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    //dismiss the keyboard
    [self.view endEditing:YES];
    
    //make an API request
    [self makeNewiTunesRequestWithSearchTerm:textField.text callbackBlock:^{
        [self.tableView reloadData];
    }];
    
    return YES;
}



@end
