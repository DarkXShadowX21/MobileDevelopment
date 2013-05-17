//
//  ViewController.m
//  aocApp2
//
//  Created by Adam on 5/16/13.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //BG Color
    self.view.backgroundColor = [UIColor blackColor];//BG Color Closed
    
    //1st UILabel Book Title "The Wolf Gift"
    
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 120.0f, 460.0f)];
    if (bookTitle != nil)
    {
        bookTitle.text = @"The Wolf Gift";
        bookTitle.textAlignment = NSTextAlignmentCenter;
        bookTitle.textColor = [UIColor colorWithRed:0.804 green:0.522 blue:0.247 alpha:1];
        bookTitle.backgroundColor = [UIColor colorWithRed:0.545 green:0.271 blue:0.075 alpha:1]; /*#8b4513*/
    }
    
    [self.view addSubview:bookTitle];//1st UILabel "The Wolf Gift" Closed
    
    //2nd UILabel Author "Author: "
    
    author = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 0.0f, 100.0f, 20.0f)];
    if (author != nil)
    {
        author.text = @"Author: ";
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor colorWithRed:0.863 green:0.078 blue:0.235 alpha:1]; /*#dc143c*/
        author.backgroundColor = [UIColor colorWithRed:0.855 green:0.647 blue:0.125 alpha:1]; /*#daa520*/
    }
    
    [self.view addSubview:author];//2nd UILabel Author "Author: " Closed
    
    //3rd UILabel Author Name "Anne Rice"
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(220.0f, 0.0f, 100.0f, 20.0f)];
    if (authorName != nil)
    {
        authorName.text = @" Anne Rice";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:1]; /*#00ff00*/
        authorName.backgroundColor = [UIColor colorWithRed:0.482 green:0.408 blue:0.933 alpha:1]; /*#7b68ee*/
    }
    
    [self.view addSubview:authorName];//3rd UILabel Author Name "Anne Rice"   Closed
    
    //4th UILabel Published "Published: "
    
    published = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 20.0f, 100.0f, 20.0f)];
    if (published != nil)
    {
        published.text = @"Published: ";
        published.textAlignment = NSTextAlignmentRight;
        published.textColor = [UIColor colorWithRed:0.282 green:0.82 blue:0.8 alpha:1]; /*#48d1cc*/
        published.backgroundColor = [UIColor colorWithRed:0.294 green:0 blue:0.51 alpha:1]; /*#4b0082*/
    }
    
    [self.view addSubview:published];//4th UILabel Published "Published: " Closed
    
    //5th UILabel Publish Year "2012"
    
    year = [[UILabel alloc] initWithFrame:CGRectMake(220.0f, 20.0f, 100.0f, 20.0f)];
    if (year != nil)
    {
        year.text = @" 2012";
        year.textAlignment = NSTextAlignmentLeft;
        year.textColor = [UIColor colorWithRed:0.902 green:0.902 blue:0 alpha:1]; /*#e6e60*/
        year.backgroundColor = [UIColor colorWithRed:0 green:0.4 blue:1 alpha:1]; /*#0066ff*/
    }
    
    [self.view addSubview:year];//5th UILabel Publish Year "2012" Closed
    
    //6th UILabel Summary
    
    summary = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 40.0f, 100.0f, 20.0f)];
    if (summary != nil)
    {
        summary.text = @"Summary";
        summary.textAlignment = NSTextAlignmentLeft;
        summary.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1]; /*#000000*/
        summary.backgroundColor = [UIColor colorWithRed:0.698 green:0 blue:0 alpha:1]; /*#b2000*/
    }
    
    [self.view addSubview:summary]; //6th UILabel Summary Closed
    
    //7th UILabel Plot
    
    plot = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 60.0f, 200.0f, 290.0f)];
    if (plot != nil)
    {
        plot.text = @" A 23 year old reporter by the name of Reuben arrives at a mansion after a 4 hour trip. Reuben decided it would be a perfect setting to settle into and do a reports on. During his visits, his normal life started to change. After a crisis at the mansion, Reuben wakes up not feeling like himself. ";
        plot.textAlignment = NSTextAlignmentCenter;
        plot.textColor = [UIColor colorWithRed:0 green:0.2 blue:0.8 alpha:1]; /*#0033cc*/
        plot.backgroundColor = [UIColor colorWithRed:1 green:0.6 blue:0 alpha:1]; /*#ff9900*/
        plot.numberOfLines = 15;
    }
    
    [self.view addSubview:plot];//7th UILabel Plot Closed
    
    //List Of Items
    
    bookItems = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 350.0f, 100.0f, 20.0f)];
    if (bookItems != nil)
    {
        bookItems.text = @"Book Items";
        bookItems.textAlignment = NSTextAlignmentLeft;
        bookItems.textColor = [UIColor colorWithRed:0.4 green:0 blue:0.4 alpha:1]; /*#660066*/
        bookItems.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0.4 alpha:1]; /*#ff0066*/
    }
    
    [self.view addSubview:bookItems];//List Of Items Closed
    
    //Multiple NSArray's
    
    bookItem1 = @"Relationships";
    bookItem2 = @"Reporter";
    bookItem3 = @" Wolves";
    bookItem4 = @"Ruebon";
    bookItem5 = @"and a Mansion";
    
    bookEvents = [[NSArray alloc] initWithObjects: bookItem1, bookItem2, bookItem3, bookItem4, bookItem5, nil];//Multiple NSArray's Closed
    
    // Looping through NSMutableString
    
    allBookEvents = [[NSMutableString alloc] initWithCapacity:5];
    for ( int i = 0; i < bookEvents.count; i++){
        [allBookEvents appendString: [bookEvents objectAtIndex: i]];
        if ( i < bookEvents.count - 1){
            [allBookEvents appendString: @","];
        }
    }// Looping through NSMutableString Closed
    
    // Increasing the lines in NSMutableString text.
    
    allBookItems = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 370.0f, 200.0f, 90.0f)];
    if (bookItems != nil)
    {
        allBookItems.text = allBookEvents;
        allBookItems.textAlignment = NSTextAlignmentCenter;
        allBookItems.textColor = [UIColor colorWithRed:0.298 green:0.2 blue:0.004 alpha:1]; /*#4c331*/
        allBookItems.backgroundColor = [UIColor colorWithRed:0 green:0.502 blue:0 alpha:1]; /*#008000*/
        allBookItems.numberOfLines = 15;
    }
    
    [self.view addSubview:allBookItems];// Increasing the lines in NSMutableString text. Closed
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
