//
//  CustomAnnotation.h
//  CoreLocationMaps
//
//  Created by Artur Lan on 11/7/15.
//  Copyright © 2015 Artur Lan. All rights reserved.
//

#import <MapKit/MapKit.h>
#import <Foundation/Foundation.h>

@interface CustomAnnotation : MKAnnotationView

-(id) initWithAnnotationWithImage:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)resuseIdentifer annotatioViewImage:(UIImage *) anonViewImage;

@end
