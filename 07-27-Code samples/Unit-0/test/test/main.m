//
//  main.m
//  test
//
//  Created by Artur Lan on 6/26/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface Sphere : NSObject {
//    NSArray *_center;
//    float _radius;
//}
//
//-(void)setRadius:(float)radius;
//-(float)radius;
//
//
//-(void)setCenter:(NSArray *)center;
//-(NSArray *)center;
//@end
//
//
//@implementation Sphere
//
//-(void)setRadius:(float)radius {
//    _radius = radius;
//}
//-(float)radius {
//    return _radius;
//}
//
//
//-(void)setCenter:(NSArray *)center {
//    _center = center;
//}
//-(NSArray *)center {
//    return _center;
//}
//
//@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//
//        Sphere *ball = [[Sphere alloc] init];
//        [ball setRadius:34];
//        
//        NSLog(@"%f", [ball radius]);
       
        
//        NSDictionary *pokemon = @{
//                @"chrizard"  : @"fire",
//                @"blastoise" : @"water",
//                @"venosaur"  : @"grass",
//                @"pikachu"   : @"electric",
//                @"ditto"     : @"normal",
//                @"alakazam"  : @"psychic"
//        };
//        
//        
//        NSLog(@"%@", pokemon);
//        
//        NSString *chrizard = [pokemon objectForKey:@"chrizard"];
//        
//        NSLog(@"%@", chrizard);
//        
//        NSLog(@"%@", pokemon[@"ditto"]);
//        
//        
//        NSMutableDictionary *computers = [[NSMutableDictionary alloc] init];
//        [computers setObject:@"2000" forKey:@"mac"];
//        [computers setObject:@"400" forKey:@"chromebook"];
//        [computers setObject:@"700" forKey:@"dell"];
//        [computers setObject:@"350" forKey:@"toshiba"];
//        
//        NSLog(@"%@", computers);
//        
//        [computers setObject:@"100" forKey:@"chromebook"];
//        
//        NSLog(@"%@", computers);
//        
//        [computers removeObjectForKey:@"toshiba"];
//        
//        NSLog(@"%@", computers);
//        
//        for (NSString *name in pokemon) {
//            
//            NSString *key = name;
//            NSString *value = [pokemon objectForKey:key];
//            NSLog(@"key: %@ and value: %@", key, value);
//        }
        
        
        NSArray *countries = [NSArray arrayWithObjects:@"England", @"USA", @"China", nil];
        NSArray *capitals = [NSArray arrayWithObjects:@"London", @"Washington", @"Beijing", nil];
        NSDictionary *map = [[NSDictionary alloc] initWithObjects:countries forKeys:capitals];
        
        NSLog(@"%@", map);
        
        NSString *london = [map objectForKey:@"London"];
        
        NSLog(@"%@", london);
      
        NSArray *stateName = [NSArray arrayWithObjects:@"Oregon", @"Florida", @"California", @"New York", @"Michigan",nil];
        NSMutableDictionary *states = [[NSMutableDictionary alloc] initWithObjects:<#(NSArray *)#> forKeys:<#(NSArray *)#>]
        
        NSMutableDictionary *states = @{
                 : @"OR",
                : @"FL",
             : @"CA",
               : @"NY",
            @"Michigan"   : @"MI"
        };
        NSLog(@"%@", states);
        
        [states setObject:@"PA" forKey:@"Penn"];
        
        NSLog(@"%@", states);
        
        NSMutableDictionary *cities = @{
            @"NY"     : @"New York",
            @"CA"    : @"San Francisco",
            @"MI" : @"Detroit",
            @"FL"   : @"Jacksonville"
        };
        NSLog(@"%@", cities);
    }
    return 0;
}




















//
////
////  main.m
////  Person
////
////  Created by Michael Kavouras on 6/21/15.
////  Copyright (c) 2015 Mike Kavouras. All rights reserved.
////
//
//// LAUREN CAPONONG homework 06-26-15
//
//#import <Foundation/Foundation.h>
//
//@interface Person: NSObject
//
//- (void)setName:(NSString *)name;   // anything that is not a primitive type has a star (it is always pointers)
//- (NSString *)name;                 //making method, and NSString is parameter. can set name property with this.  you access through setters or getters.
//
//- (void)setCity:(NSString *)city;  //set property || the same in your interface and implementation
//- (NSString *)city;                // get propery
//
//- (void)setPhoneNumber:(NSString *)phoneNumber;     //defined setter || the same in your interface and implementation
//- (NSString *)phoneNumber;                          //defined getter
//
//- (void) changePersonsName: (Person *) aPerson      //two parts because there are two parameters
//                    toName:(NSString *) newName;
//
//
//- (BOOL)checkSameCity:(Person *) aPerson;       // bool type
//
//- (Person*) haveChild;
//
//- (void)claimChild:(Person *) childToClaim;
//
//
//
//// any time you are using NSObject you have to use a pointer (*)
//
//
//@end
//
//
//
//@implementation Person {            //where you define methods that you declare; you will never have a method in implementation that is not in interface
//    
//    NSString *_name;            // property
//    NSString *_phoneNumber;     // property
//    NSString *_city;            // property
//    //Person *_child;         // add a new property of type person called child
//    NSMutableArray *_children;
//}
//
//- (void)setName:(NSString *)name {    //  'name' is a temporary place to store something
//    _name = name;
//}
//
//- (NSString *)name {
//    return _name;
//}
//
//- (void)setCity:(NSString *)city {
//    _city = city;           // we are setting the instance property with the value that is passed to the method
//}
//
//- (NSString *)city {
//    return _city;
//}
//
//- (void)setPhoneNumber:(NSString *)phoneNumber {
//    _phoneNumber = phoneNumber;
//}
//
//- (NSString *)phoneNumber {
//    return _phoneNumber;
//}
//
//
//- (void) changePersonsName: (Person *) aPerson
//                    toName:(NSString *) newName; {
//    
//    [aPerson setName:newName];
//    
//}
//
//
//- (BOOL)checkSameCity:(Person *) aPerson {
//    if ([[aPerson city] isEqualToString: [self city]]) {
//        return YES;
//    } else {
//        return NO;
//    }
//}
//
//
//
//- (Person *) haveChild {
//    Person *child = [[Person alloc] init];
//    [child setCity:[self city]];
//    [child setPhoneNumber:[self phoneNumber]];
//    return child;
//}
//
//
//
//- (void)claimChild:(Person *) childToClaim {      // return type is void, method is claimchild (message send)
//    /// passing one paraemter which is  'person', 'called childtoclaim'
//    //gets stored in childtoclaim
//    // _child = childToClaim;                      // _child is the variable to hold that person. we will give it a value in main.
//    
//    
//    if (_children == nil) {
//        _children = [[NSMutableArray alloc] init];
//    } else {
//        [_children addObject:childToClaim]; }
//    
//}
//
//
//@end
//
//
//
//
//
//
//
//// - - - - - - - - - - - -- - - - - -- - - - - - - - - -
//
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        
//        Person *carl = [[Person alloc] init];
//        Person *mike = [[Person alloc] init];
//        
//        [carl setName:@"Carl"];
//        
//        [carl setCity:@"Portland"];
//        [mike setCity:@"New york"];
//        
//        [carl setPhoneNumber:@"867-5309"];
//        
//        NSString *carlsName = [carl name];      // stored name in new variable and printed new variable
//        
//        NSLog(@"%@", carlsName);
//        
//        [carl setName:@"Steven"];       // sets name to steven
//        
//        NSLog(@"%@", [carl name]);
//        
//        [mike changePersonsName:carl toName:@"carl"];       //changes name back to carl
//        NSLog(@"%@", [carl name]);
//        
//        BOOL citiesAreSame = [mike checkSameCity:carl];
//        NSLog(@"%d", citiesAreSame);
//        
//        Person *mikesBaby = [mike haveChild];
//        
//        [mike claimChild:mikesBaby];        //claiming baby
//        
//        NSLog(@"%@", [mikesBaby city]);
//        [mike changePersonsName:mikesBaby toName:@"Abc"];
//        
//        
//        
//    }
//    return 0;
//}
//
//



//
//  main.m
//  TodoList
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//
//Requirements
//
//1. Does not crash.
//2. Gracefully handle unacceptable user input
//3. Structural requirements
//
// A class to manage your todo lists
// A class to represent a todo list
// A class to represent a todo item
//
//Features
//
//1. Create lists *
//2. Add an item to a list *
//3. Delete an item from a list *
//4. Mark an item as "done"
//5. Edit an item
//6. Set priority on items (1 - 4; default = 1);
//7. List active (not marked done) items in list
//8. List inactive (marked done) items in list

//
//#import <Foundation/Foundation.h>
//
//@class Item;
//@class Manager;
//@class List;
//
//// ************************* Represent To Do Item *************************
//
//@interface Item : NSObject
//-(void)setNewItem:(NSString *)item;
//
//@end
//
//@implementation Item {
//    NSString *_newItem;
//    NSString *_completedItem;
//}
//-(void)setNewItem:(NSString *)item{
//    _newItem = item;
//}
//@end
//
//
////************************** Represent To Do List ************************
//
//@interface List : NSObject
//- (void) setNewList:(NSMutableArray *)newList;
//
//
//@end
//
//@implementation List{
//    NSMutableArray *_newList;
//}
//- (void) setNewList:(NSMutableArray *)newList{
//    _newList = newList;
//    
//}
//@end
//
//
////******************************** Manager *********************************
//@interface Manager : NSObject
//
//- (void) ToDoHome;
//- (void) createList;
//- (void) showList;
//- (void) addItem;
//- (void) deleteItem;
//- (void) markComplete;
//- (void) completedList;
//
//@end
//
//@implementation Manager {
//    
//    NSMutableArray *_yourList;
//    NSMutableArray *_completedList;
//}
//
//
//- (void) ToDoHome {
//    NSLog(@"What would you like to do?\n1- list items\n2- add item\n3- delete item\n4- mark item done\n5- list completed item");
//    
//    
//    int i;
//    scanf("%d", &i);
//    
//    //    for (int j = 0; j < 5; j++) {
//    
//    if (i == 1) {
//        NSLog(@"You chose to list items");
//        [self showList];
//    }
//    
//    if (i == 2) {
//        NSLog(@"You chose to add an item. Please enter a description:");
//        [self addItem];
//    }
//    
//    if (i == 3) {
//        NSLog(@"You chose to delete an item \n");
//        [self deleteItem];
//    }
//    
//    if (i == 4) {
//        NSLog(@"You chose to mark an item as completed: \n");
//        [self markComplete];
//    }
//    
//    if (i == 5 ) {
//        NSLog(@"You chose to list completed items: \n");
//        [self completedList];
//    }
//    
//}
//
//- (void) createList{                // creating list if there is none
//    
//    List *newList = [[List alloc] init];
//    
//    [newList setNewList:(_yourList)];
//    
//    _yourList = [[NSMutableArray alloc] init];      // initializing array
//    
//}
//- (void) showList{                              //Show our list as it is
//    
//    
//    for (int i = 0; i < [_yourList count]; i++)
//    {
//        NSLog(@"%d %@",i+1, _yourList[i]);
//    }
//    
//    [self ToDoHome];
//}
//
//- (void) addItem{                               //Add item to our list
//    
//    char word;
//    scanf("%s^\n", &word);
//    fpurge(stdin);
//    
//    NSString *_newItem = [NSString stringWithUTF8String:&word];     // converting to string
//    
//    Item *newItem = [[Item alloc] init];
//    
//    [newItem setNewItem:(_newItem)];
//    
//    [_yourList addObject:_newItem];                                 // add new item to your list
//    
//    [self ToDoHome];
//    
//}
//
//- (void) deleteItem{                            //Delete item from our list
//    NSLog(@"Which item would you like to delete? ");
//    for (int i = 0; i < [_yourList count]; i++)
//    {
//        NSLog(@"%d %@",i+1, _yourList[i]);
//    }
//    
//    int k;
//    scanf("%d", &k);
//    [_yourList removeObjectAtIndex:k-1];
//    NSLog(@"Your updated list is:");
//    for (int i = 0; i < [_yourList count]; i++)
//    {
//        
//        NSLog(@"%d %@",i+1, _yourList[i]);
//    }
//    [self ToDoHome];
//}
//
//- (void) markComplete{
//    NSLog(@"Which item is complete? ");
//    for (int i = 0; i < [_yourList count]; i++)
//    {
//        
//        NSLog(@"%d %@",i+1, _yourList[i]);
//    }
//    
//    int q;
//    scanf("%d", &q);
//    NSString *complete = @"complete";
//    
//    
//    
//    [_yourList replaceObjectAtIndex:q-1 withObject:complete];
//    
//    NSLog(@"Your updated list is:");
//    for (int i = 0; i < [_yourList count]; i++)
//    {
//        
//        NSLog(@"%d %@",i+1, _yourList[i]);
//    }
//    //  [self ToDoHome];
//}
//
//
//
//
//
//- (void) completedList {                // creating list if there is none
//    
//    _completedList = [[NSMutableArray alloc] init];      // initializing array
//    
//    for (int i = 0; i < [_completedList count]; i++)
//    {
//        NSLog(@"%d %@",i+1, _completedList[i]);
//    }
//    
//    
//}
//
//
//@end
//
//
//// ==============================================================
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        
//        Manager *listManager = [[Manager alloc]init];
//        
//        [listManager createList];
//        
//        [listManager ToDoHome];
//        
//        [listManager completedList];
//        
//        
//        
//        
//        
//    }
//    return 0;
//}
//
//
//
//
//
//
//
//
//
//
//
