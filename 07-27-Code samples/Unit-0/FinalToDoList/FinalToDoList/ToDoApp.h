//
//  ToDoApp.h
//  FinalToDoList
//
//  Created by Artur Lan on 6/29/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "List.h"

@interface ToDoApp : NSObject

-(id)init;
-(void)startApp;

-(void) setListArray:(List *)list; //add an instance of List to listArray
-(NSString *)createList;

-(void) setAddItem:(NSMutableArray *)addItem;
-(NSMutableArray *)addItem;



@end
