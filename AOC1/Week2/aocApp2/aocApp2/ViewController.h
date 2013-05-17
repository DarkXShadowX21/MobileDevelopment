//
//  ViewController.h
//  aocApp2
//
//  Created by Adam on 5/16/13.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
//    UILabels
    UILabel * bookTitle;
    UILabel * author;
    UILabel * authorName;
    UILabel * published;
    UILabel * year;
    UILabel * summary;
    UILabel * plot;
    UILabel * bookItems;
    UILabel * allBookItems;
    
//    NSStrings
    NSString * bookItem1;
    NSString * bookItem2;
    NSString * bookItem3;
    NSString * bookItem4;
    NSString * bookItem5;
    
    NSArray * bookEvents;
    
//  NSMutable String
    NSMutableString * allBookEvents;
}
@end
