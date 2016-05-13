//
//  ViewController.m
//  app story
//
//  Created by Artur Lan on 6/9/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *painter;

- (IBAction)pushIt:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pushIt:(id)sender {

    // Painters: DaVinci, Carravaggio, Rembrandt.
    
    
    NSMutableString *painter = [[NSMutableString alloc]init];
    if ([painter isEqualToString:@"Da Vinci"]) {
        UIAlertView *inputAlert = [[UIAlertView alloc]initWithTitle:@"Da Vinci" message:@"Leonardo di ser Piero da Vinci (15 April 1452 – 2 May 1519) was an Italian polymath. He was a painter, sculptor, architect, musician, mathematician, engineer, inventor, anatomist, geologist, cartographer, botanist, and writer." delegate:self cancelButtonTitle:@"Done" otherButtonTitles: nil];
        
    }
    
    
}

@end
