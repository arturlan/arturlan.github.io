//
//  JackieViewController.h
//  Protocols
//
//  Created by Artur Lan on 9/12/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JackieCommunicationProtocol.h"

@interface JackieViewController : UIViewController


// property of type id (any object) that conforms to this protocol <JackieCommunicationProtocol> called 'delagate'
@property (nonatomic, weak) id <JackieCommunicationProtocol> delagate;

@end