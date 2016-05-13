//
//  ArtursInstagramProject.h
//  CustomTableViewCells
//
//  Created by Artur Lan on 9/24/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArtursInstagramProject : NSObject

@property (nonatomic) NSArray *tags;
@property (nonatomic) NSInteger commentCount;
@property (nonatomic) NSInteger likeCount;
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *fullname;
@property (nonatomic) NSDictionary *caption;

- (instancetype)initWithJSON: (NSDictionary *)json;


@end
