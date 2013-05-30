//
//  ViewController.m
//  aocApp4
//
//  Created by Adam Du Puis on 5/29/13.
//  Copyright (c) 2013 Adam Du Puis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
//    LOGIN
//    
//    1. Create a UILabel near the top of your screen with the text "Username:" in it. [COMPLETED]
//    
//    2. Create a UITextField to the right of the username label [COMPLETED]
//    
//    3. Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it. [COMPLETED]
//    
//    4. Create another UILabel beneath with the default text "Please Enter Username". [COMPLETED]
//    
//    5. Add a target to the UIButton to call a function called onClick when the user presses the Login button.
//    
//    6. If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
//    
//    Hint: NSString has a property called length that tells you how many characters are in the string.
//    
//    DATE
//    
//    1. This section will display a UIAlertView with the current date and time in it using an NSDate object.
//    
//    2. Create a UIButton using the rounded rectangle type. Give this button any color you wish.
//    
//    3. Add the text "Show Date" to the button
//    
//    4. Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.
//    
//    5. Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.
//    
//    INFORMATION
//    
//    1. This section will display the text "This application was created by: Firstname Lastname" in a label when the info button is clicked.
//    
//    2. Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.
//    
//    3. Create a UILabel beneath it that contains no initial text.
//    Hook up an action to the info button to have it call the onClick handler you created earlier.
//    
//    4. When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.

    
    //BG Color
self.view.backgroundColor = [UIColor brownColor];
    
    //Login 1
    userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 20.0f, 100.0f, 20.0f)];
    
    if (userName !=nil) {
        userName.backgroundColor = [UIColor clearColor];
        userName.text = @"Username:";
        userName.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:userName];
    
    //Login 2
    UITextField * textField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 16.0f, 210.0f, 28.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    //Login 3
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil)
    {
        button.frame = CGRectMake(230.0f, 50.0f, 80.0f, 30.0f);
        [button setTitle:@"Login" forState:UIControlStateNormal];
        //Pushed Button
        //[button setTitle:@"pushed" forState:UIControlStateHighlighted];
        [self.view addSubview:button];
    }
    
    //Login 4
    inputName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 50.0f)];
    
    if (inputName !=nil) {
        inputName.text = @"Please Enter Username";
        inputName.textAlignment = NSTextAlignmentCenter;
        inputName.textColor = [UIColor blackColor];
        
    }
    [self.view addSubview:inputName];
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
