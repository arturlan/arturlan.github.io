//
//  Snack.m
//  BungalowCoreData
//
//  Created by Artur Lan on 10/3/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "Snack.h"

@implementation Snack

@dynamic name;
@dynamic flavor;
@dynamic calories;

+ (NSString *)entityName {
    
    return @"Snack";
    
}
@end
