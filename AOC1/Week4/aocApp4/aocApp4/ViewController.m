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

//Login Step 5
- (void)onClick: (UIButton * )button
{
    switch (button.tag) {
        case 0:
        {
            validateName = [textField text];
            if (validateName.length < 1)
            {
                //Login Step 6
                inputName.text = @"User Name Cannot Be Empty.";
                
            } else if  (validateName.length > 1){
                
                validated = [[NSString alloc] initWithFormat:@"User: %@ has been logged in", validateName];
                inputName.text = validated;
                
            }
        }
            
            break;
            
//        case 1:
//        {
//            iButton = [textField text];
//            if(infoButton.tag == 2)
//                
//            {   //Information Step 4
//                infoLabel.text = @"This application was created by: Adam Du Puis";
//                [self.view addSubview:infoLabel];
//            }
//            
//        }
            
        case 2:
        {
            iButton = [textField text];
            if(infoButton.tag == 2)
                
            {   //Information Step 4         
                infoLabel.text = @"This application was created by: Adam Du Puis";
                [self.view addSubview:infoLabel];
            }
           
        }
            
        default:
            break;
    }
    
    
//        alertView = [[UIAlertView alloc] initWithTitle:@"popup" message:@"Pressed Button" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
//        if (alertView != nil)
//        {
//            [alertView show];
//        }
}

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
    //    5. Add a target to the UIButton to call a function called onClick when the user presses the Login button. [COMPLETED]
    //
    //    6. If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in". [COMPLETED]
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
    
    //Login Step 1
    userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 20.0f, 100.0f, 20.0f)];
    
    if (userName !=nil) {
        userName.backgroundColor = [UIColor clearColor];
        userName.text = @"Username:";
        userName.textColor = [UIColor whiteColor];
        [self.view addSubview:userName];
    }
    
    
    //Login Step 2
    textField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 16.0f, 210.0f, 28.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    //Login Step 3
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(230.0f, 50.0f, 80.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        loginButton.tag = 0;
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    
    //Login Step 4
    inputName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 50.0f)];
    
    if (inputName !=nil)
    {
        inputName.text = @"Please Enter Username";
        inputName.textAlignment = NSTextAlignmentCenter;
        inputName.textColor = [UIColor blackColor];
        [self.view addSubview:inputName];
    }
    
    //Date Step 1
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(5.0f, 240.0f, 130.0f, 60.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        dateButton.tag = 1;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    //Date Step 2
    
    date = [NSDate date];
    
    NSDateFormatter * dateFormat = [[NSDateFormatter alloc] init];
    if (dateFormat) {
        [dateFormat setDateFormat:@"dd, dd MM YYYY, hh:mm aaa, zzzz"];
        dateLabel.text = [dateFormat stringFromDate:date];
        dateButton.tag = 1;
    }
    
    
    
    
    //Information Step 2
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        infoButton.tag = 2;
        infoButton.frame = CGRectMake(5.0f, 360.0f, 25.0f, 25.0f);
        [self.view addSubview:infoButton];
    }
    
    //Information Step 3
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 370.0f, 290.0f, 100.0f)];
    if (infoLabel != nil)
    {
        infoLabel.backgroundColor = [UIColor clearColor];
        infoLabel.textAlignment = NSTextAlignmentCenter;
        infoLabel.textColor = [UIColor blackColor];
        infoLabel.numberOfLines = 2;
    }
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
