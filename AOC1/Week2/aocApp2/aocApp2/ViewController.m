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
        author.textColor = [UIColor colorWithRed:0.863 green:0.078 blue:0.235 alpha:1] /*#dc143c*/;
        author.backgroundColor = [UIColor colorWithRed:0.855 green:0.647 blue:0.125 alpha:1]; /*#daa520*/
    }
    
    [self.view addSubview:author];

            
//            Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
         
//            Create a UILabel on the next line called "Published:". This text is right justified.
           
//            Create a label next to the Published label and add the text of when the book was published. This text is left justified.
           
//            Create a UILabel with the text "Summary". This text is left justified.
          
//            Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
         
//            Labels and Arrays
           
//            Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
         
//            Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString     separated by commas.    The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
           
//            Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
          
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
