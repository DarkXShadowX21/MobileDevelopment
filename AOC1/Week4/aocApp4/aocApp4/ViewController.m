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
            [textField resignFirstResponder];
            
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
            //Date Step 4 + 5
        case 1:
        {
            date = [NSDate date];
            
            NSDateFormatter * dateFormat = [[NSDateFormatter alloc] init];
            if (dateFormat != nil)
            {
                [dateFormat setDateStyle:NSDateFormatterLongStyle];
                [dateFormat setTimeStyle:NSDateFormatterFullStyle];
                NSString * dateInfo = [dateFormat stringFromDate:date];
                
                dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:dateInfo delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
                if (dateAlert != nil)
                {
                    [dateAlert show];
                }
                
            }
        }
            break;
            
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
    
}

- (void)viewDidLoad
{
    
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
