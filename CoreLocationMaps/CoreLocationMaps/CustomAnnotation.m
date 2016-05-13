//
//  CustomAnnotation.m
//  CoreLocationMaps
//
//  Created by Artur Lan on 11/7/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import "CustomAnnotation.h"

@implementation CustomAnnotation

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(id) initWithAnnotationWithImage:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)resuseIdentifer annotatioViewImage:(UIImage *) anonViewImage {
    self = [super initWithAnnotation:annotation reuseIdentifier:resuseIdentifer];
    
    self.image = anonViewImage;
    return self;
}
@end
