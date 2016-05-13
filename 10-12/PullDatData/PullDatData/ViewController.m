//
//  ViewController.m
//  PullDatData
//
//  Created by Artur Lan on 10/13/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    
    [manager GET:@"http://api.flickr.com/services/rest/?&method=flickr.people.getPublicPhotos&api_key=4298b659ede8ba850800014e40787da3&user_id=[your user id here]&format=json" parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {

        NSDictionary *dict = responseObject[@"query"][@"pages"];
        NSDictionary *firstPage;
        for (NSDictionary *pages in dict) {
            firstPage = dict[pages];
            break;
        }
        NSLog(@"%@", responseObject);
    
    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
        
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
