//
//  ViewController.m
//  Protocols
//
//  Created by Artur Lan on 10/11/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"
#import "ChessBoardDataSource.h"

@interface ViewController () <ChessBoardDataSource>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfTilesInGameBoard {
    return 16;
}

@end
