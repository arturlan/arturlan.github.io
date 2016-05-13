//
//  ViewController.m
//  CustomTableViewCells
//
//  Created by Artur Lan on 9/24/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "APIManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchInstagramData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)fetchInstagramData {
    // creat a Instagram URL
    NSURL *instagramURL = [NSURL URLWithString:@"https://api.instagram.com/v1/tags/moscow/media/recent?client_id=ac0ee52ebb154199bfabfb15b498c067"];
    
    [APIManager GETRequestWithURL:instagramURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSLog(@"%@", json);
    }];
    
}

@end
