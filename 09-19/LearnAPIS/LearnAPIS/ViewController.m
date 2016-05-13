//
//  ViewController.m
//  LearnAPIS
//
//  Created by Artur Lan on 9/19/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "InstagramViewController.h"
#import "APIManager.h"

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) NSArray *intagramData;

@end

@implementation ViewController



- (void)fetchInstagramData {
    // creat a Instagram URL
    NSURL *instagramURL = [NSURL URLWithString:@"https://api.instagram.com/v1/tags/moscow/media/recent?client_id=ac0ee52ebb154199bfabfb15b498c067"];
    
    [APIManager GETRequestWithURL:instagramURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        self.intagramData = [json objectForKey:@"data"];
        
        [self.tableView reloadData];
    }];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    
    [self fetchInstagramData];
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURL *url = [NSURL   URLWithString:@"https://itunes.apple.com/search?term=apple&media=software"];
//    
//    [self GETRequestWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        
//        
//        //deserialize the data from the server into JSON
//        
//        NSDictionary *allData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//        
//        
//        //store the value from results key (NSArray) into a variable
//        
//        //called firstResult
//        
//        NSArray *results = [allData objectForKey:@"results"];
//        
//        //store the first object in the result array into a new variable
//        
//        //called firstResult
//        
//        NSDictionary *firstResult = [results firstObject];
//        
//        
//        //get the first screenshot url string from our
//        
//        NSArray *screenshots = [firstResult objectForKey:@"screenshotUrls"];
//        
//        
//        //get the first screenshot url string from our array
//        
//        
//        NSString *imageURLString = [screenshots firstObject];
//        
//        
//        
//        NSURL *imageURL = [NSURL URLWithString:imageURLString];
//        
//        //create data object from out imageURL
//        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
//                
//        //create an image with data from out url
//        UIImage *image = [UIImage imageWithData:imageData];
//                
//        
//        self.imageView.image = image;
//
//        
//    }];
//
    
    
    
//    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//
//        
//        //deserialize the data from the server into JSON
//        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//        
//        //store the value from results key (NSArray) into a variable
//        //called firstResult
//        NSArray *results = [json objectForKey:@"results"];
//        //store the first object in the result array into a new variable
//        //called firstResult
//        NSDictionary *firstResult = [results firstObject];
//            
//        //get the first screenshot url string from our 
//        NSArray *screenShot = [firstResult objectForKey:@"screenshotUrls"];
//        
//        //get the first screenshot url string from our array
//
//        NSString *imageURLString = [screenShot firstObject];
//        
//        NSURL *imageURL = [NSURL URLWithString:imageURLString];
//        
//        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
//        
//        UIImage *image = [UIImage imageWithData:imageData];
//        
//        self.imageView.image = image;
//        
//        });
//        
//    }];
//    
//    [task resume];
//    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    InstagramViewController *vc = segue.destinationViewController;
    
    
    
    NSDictionary *currentInstagramItem = self.intagramData[indexPath.row];


    vc.instagramPost = currentInstagramItem;
    
}

- (IBAction)refreshTableView:(UIBarButtonItem *)sender {
    
    [self fetchInstagramData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.intagramData.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    
    NSDictionary *currentInstagramItem = self.intagramData[indexPath.row];
    NSDictionary *user = [currentInstagramItem objectForKey:@"user"];
    
    NSString *username = [user objectForKey:@"username"];
    cell.textLabel.text = username;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
