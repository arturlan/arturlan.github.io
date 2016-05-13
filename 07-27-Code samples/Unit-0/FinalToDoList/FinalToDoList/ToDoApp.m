//
//  ToDoApp.m
//  FinalToDoList
//
//  Created by Artur Lan on 6/29/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ToDoApp.h"

@implementation ToDoApp {
    char word;
    char name[256];
    NSMutableArray *listArray;
    
}


- (id)init {
    self = [super init];
    listArray = [[NSMutableArray alloc] init];
    return self;
}

- (void)startApp {
    
    
    
    while (true) {
        NSLog(@"What would you like to do?\na - add list\nr - remove list\nl - list all your Lists");
        scanf("%c", &word);
        fpurge(stdin);
        
        if(word == 'a'){
            
            List *aList = [[List alloc] init];
            
            NSLog(@"Name it");
            scanf("%c", &name[256]);
            fpurge(stdin);
            
            [aList setNameString:[NSString stringWithUTF8String:name]];
            
            [self setListArray:aList];
            
            
        }
        if (word == 'r') {
            NSLog(@"What list would you like to delete?");
            for (int i = 0; i < [listArray count]; i++) {
                
            }
            
            int r;
            scanf("%d", &r);
            [listArray removeObjectAtIndex:r-1];
            NSLog(@"Updated list");
            
            for (int i = 0; i < [listArray count]; i++) {
                NSLog(@"%d %@",i+1, listArray[i]);
            }
        }
        if (word == 'l') {
            for (int i = 0; i < [listArray count]; i++) {
                NSLog(@"%s %@",name, listArray[i]);
                
            }
        }
    }
    
}

-(void)setListArray:(List *)aList {
    [listArray addObject:aList]; //add instance of list to listArray
}

-(NSMutableArray *)listArray{
    return listArray;
}




@end
