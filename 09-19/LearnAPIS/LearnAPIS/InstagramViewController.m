//
//  InstagramViewController.m
//  LearnAPIS
//
//  Created by Artur Lan on 9/19/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "InstagramViewController.h"

@implementation InstagramViewController

- (void) viewDidLoad {
    
    NSLog(@"%@",self.instagramPost);
    
    NSDictionary *images = [self.instagramPost objectForKey:@"images"];
    
    NSDictionary *sr = [images objectForKey:@"standard_resolution"];
    
    NSString *urlString = [sr objectForKey:@"url"];
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSData *pictureData = [NSData dataWithContentsOfURL:url];
    
    UIImage *picture = [UIImage imageWithData:pictureData];
    
    self.imageView.image = picture;
}

@end
