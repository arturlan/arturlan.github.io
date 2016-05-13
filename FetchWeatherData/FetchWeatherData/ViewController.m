//
//  ViewController.m
//  FetchWeatherData
//
//  Created by Artur Lan on 2/19/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>
static NSString *baseUrl = @"https://api.forecast.io/forecast/caaa498389e393edc00749624682e003/37.8267,-122.423";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getData {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://api.forecast.io/forecast/caaa498389e393edc00749624682e003/37.8267,-122.423"
      parameters:nil
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Error: %@", error);
    }];
}
- (IBAction)fetchData:(UIButton *)sender {
   
}

@end
