//
//  List.h
//  FinalToDoList
//
//  Created by Artur Lan on 6/29/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface List : NSObject {
    NSString *nameString;
}

- (void)setNameString:(NSString *)value;
- (NSString *)nameString;
@end
