//
//  JSONFlickrViewController.h
//  JSONFlickr
//
//  Created by John on 8/21/09.
//  Copyright iPhoneDeveloperTips.com 2009. All rights reserved.
//

@interface JSONFlickrViewController : UIViewController
{
  NSMutableArray  *photoTitles;         // Titles of images
  NSMutableArray  *photoSmallImageData; // Image data (thumbnail)
  NSMutableArray  *photoURLsLargeImage; // URL to larger image 
}

@end

