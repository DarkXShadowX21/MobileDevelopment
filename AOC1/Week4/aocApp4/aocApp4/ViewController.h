//
//  ViewController.h
//  aocApp4
//
//  Created by Adam Du Puis on 5/29/13.
//  Copyright (c) 2013 Adam Du Puis. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController
{
    UILabel * userName;
    UITextField * textField;
    UIButton * loginButton;
    UILabel * inputName;
    NSString * validateName;
    NSString * validated;
    NSString * iButton;
    UILabel * infoLabel;
    UIButton * infoButton;
    UIButton * dateButton;
    NSDate * date;
    NSDateFormatter * format;
   
    
    UIAlertView * dateAlert;
}
- (void)onClick: (UIButton * )button;
@end
