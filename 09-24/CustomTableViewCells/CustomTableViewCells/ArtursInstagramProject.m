//
//  ArtursInstagramProject.m
//  CustomTableViewCells
//
//  Created by Artur Lan on 9/24/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ArtursInstagramProject.h"

@implementation ArtursInstagramProject

- (instancetype)initWithJSON: (NSDictionary *)json {
    if (self = [super init]) {

        self.tags = [json objectForKey:@"tags"];
        self.commentCount = [json[@"comments"] [@"count"] integerValue];
        self.likeCount = [json[@"likes"] [@"count"] integerValue];
        self.caption = json[@"caption"];
        self.username = json[@"user"] [@"username"];
        self.fullname = json[@"user"] [@"full_name"];
        return self;
    }
    return nil;
}


@end
