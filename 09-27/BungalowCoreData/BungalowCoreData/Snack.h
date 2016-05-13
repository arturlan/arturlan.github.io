//
//  Snack.h
//  BungalowCoreData
//
//  Created by Artur Lan on 10/3/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface Snack : NSManagedObject

@property (nonatomic) NSString *flavor;
@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *calories;

+ (NSString *)entityName;

@end
