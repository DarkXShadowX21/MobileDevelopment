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
    
// INITIAL AOC1 WEEK 2 COMMIT
    
//    Instructions
//    
//    In this example you will be utilizing the information you've learned about UILabels, NSString and arrays. You will need to choose a book that you have read and use it as the source information for this project.
//    
//    Make sure that ALL the colors you use are different, if you have 8 labels you will use 16 colors, 9 labels=18 colors, and so on. All text will need to be readable so choose the colors wisely. All UI elements must be created in code and not using Interface Builder at this time. We do this so you understand how UI creation works in detail.
//        
//        - View
//        Change the background color of the view to any color you wish.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
//        
//        - Book Information and UILabels
//        Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.
    
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 120.0f, 460.0f)];
    if (bookTitle != nil)
    {
            bookTitle.text = @"The Wolf Gift";
            bookTitle.textAlignment = NSTextAlignmentCenter;
            bookTitle.textColor = [UIColor colorWithRed:0.804 green:0.522 blue:0.247 alpha:1];
            bookTitle.backgroundColor = [UIColor colorWithRed:0.545 green:0.271 blue:0.075 alpha:1]; /*#8b4513*/
    }
    
    [self.view addSubview:bookTitle];
    
//            Create another label that contains the text "Author:" with the text right justified.
    
    author = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 0.0f, 100.0f, 20.0f)];
    if (author != nil)
    {
        author.text = @"Author: ";
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor colorWithRed:0.863 green:0.078 blue:0.235 alpha:1]; /*#dc143c*/
        author.backgroundColor = [UIColor colorWithRed:0.855 green:0.647 blue:0.125 alpha:1]; /*#daa520*/
    }
    
    [self.view addSubview:author];

            
//            Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
    
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(220.0f, 0.0f, 100.0f, 20.0f)];
    if (authorName != nil)
    {
        authorName.text = @" Anne Rice";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:1]; /*#00ff00*/
        authorName.backgroundColor = [UIColor colorWithRed:0.482 green:0.408 blue:0.933 alpha:1]; /*#7b68ee*/
    }
    
    [self.view addSubview:authorName];
    
//            Create a UILabel on the next line called "Published:". This text is right justified.
    
    published = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 20.0f, 100.0f, 20.0f)];
    if (published != nil)
    {
        published.text = @"Published: ";
        published.textAlignment = NSTextAlignmentRight;
        published.textColor = [UIColor colorWithRed:0.282 green:0.82 blue:0.8 alpha:1]; /*#48d1cc*/
        published.backgroundColor = [UIColor colorWithRed:0.294 green:0 blue:0.51 alpha:1]; /*#4b0082*/
    }
    
    [self.view addSubview:published];
    
//            Create a label next to the Published label and add the text of when the book was published. This text is left justified.
    
    year = [[UILabel alloc] initWithFrame:CGRectMake(220.0f, 20.0f, 100.0f, 20.0f)];
    if (year != nil)
    {
        year.text = @" 2012";
        year.textAlignment = NSTextAlignmentLeft;
        year.textColor = [UIColor colorWithRed:0.902 green:0.902 blue:0 alpha:1]; /*#e6e60*/
        year.backgroundColor = [UIColor colorWithRed:0 green:0.4 blue:1 alpha:1]; /*#0066ff*/
    }
    
    [self.view addSubview:year];
    
//            Create a UILabel with the text "Summary". This text is left justified.
    
    summary = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 40.0f, 100.0f, 20.0f)];
    if (summary != nil)
    {
        summary.text = @"Summary";
        summary.textAlignment = NSTextAlignmentLeft;
        summary.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1]; /*#000000*/
        summary.backgroundColor = [UIColor colorWithRed:0.698 green:0 blue:0 alpha:1]; /*#b2000*/
    }
    
    [self.view addSubview:summary];
    
//            Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
    
    plot = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 60.0f, 200.0f, 290.0f)];
    if (plot != nil)
    {
        plot.text = @" A 23 year old reporter by the name of Reuben arrives at a mansion after a 4 hour trip. Reuben decided it would be a perfect setting to settle into and do a reports on. During his visits, his normal life started to change. After a crisis at the mansion, Reuben wakes up not feeling like himself. ";
        plot.textAlignment = NSTextAlignmentCenter;
        plot.textColor = [UIColor colorWithRed:0 green:0.2 blue:0.8 alpha:1]; /*#0033cc*/
        plot.backgroundColor = [UIColor colorWithRed:1 green:0.6 blue:0 alpha:1]; /*#ff9900*/
        plot.numberOfLines = 15;
    }
    
    [self.view addSubview:plot];
    
//            - Labels and Arrays
    
//            Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
    
    bookItems = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 350.0f, 100.0f, 20.0f)];
    if (bookItems != nil)
    {
        bookItems.text = @"Book Items";
        bookItems.textAlignment = NSTextAlignmentLeft;
        bookItems.textColor = [UIColor colorWithRed:0.4 green:0 blue:0.4 alpha:1]; /*#660066*/
        bookItems.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0.4 alpha:1]; /*#ff0066*/
    }
    
    [self.view addSubview:bookItems];
    
//            Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array
    
    
    
         
//            Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString     separated by commas.    The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
           

          
//            Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
