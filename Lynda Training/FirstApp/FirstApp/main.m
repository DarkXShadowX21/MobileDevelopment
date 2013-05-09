//
//  main.m
//  FirstApp
//
//  Created by Adam on 5/8/13.
//  Copyright (c) 2013 com.company. All rights reserved.
//


// #import is called a pre proccessor directive which causes code to run other files before running main.m. 
#import <Foundation/Foundation.h>
//#define allows us to create a macro. It can be used to do a simple find & replace
#define HIGHSCORE 1000000
#define PI 3.14159265

void myFunctionC (){
    // This is the setup index int i = 1
    // This checks the condition i < 10
    // This increment's the index i++
    for ( int i = 1 ; i < 10; i++ ) {
        //do stuff
        NSLog(@"The Value of the index is %i", i);
        //do stuff
        if (i == 5) {
            break;
        }
        
        if (i % 5 == 0) {
            continue; // jump back to the top
        }
        //etc..
    }
    
    // break jumps out of the loop
}

// Example Nine - Scope

int bar = 10;

void myFunctionD (int someValue) {
    someValue = someValue + 10;
    bar++;
    NSLog(@"The value passed in was %i", someValue);
    NSLog(@"The value of bar is %i", bar);
}

// Example Ten - Enumeration's continued

typedef enum { window = 99, aisle = 199, middle = 399 } seatPreference;



int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        myFunctionC();
        
        
        // First Example
        int minutes = 60;
        int hours = 24;
        int days = 365;
        
        int minutesInAYear = minutes * hours * days;
        
        
        NSLog(@"There are %i minutes in a year.",minutesInAYear);
        
        
        // Second Example
        int c = 100;
        int d = 90;
        
        if ( (c == 100) || (d > 50) ){
            NSLog(@"Yes, it is");
        }
        
        // Third Example Switch
        int category = 42;
        
        switch (category) {
            case 40:
                NSLog(@"It's a category 40");
                break;
            case 41:
                NSLog(@"It's a category 41");
                break;
            case 42:
                NSLog(@"It's a case 42");
                break;
            case 43:
            case 44:
                NSLog(@"It's a category 42, or 43, or 44");
                break;
            default:
                NSLog(@"I don't know what it was!");
                break;
        }
        
        
        
        // Convulated if else statements DO NOT USE//
        
        //        int category = 47;
        //
        //        // check it
        //        if ( category == 40 )
        //        {
        //            // do one thing
        //        } else {
        //            if ( category == 41 ) {
        //                // do something else
        //            } else {
        //                if ( category == 42 ) {
        //                    // do something else
        //                } else {
        //                    // etc..
        //                }
        //            }
        //        }
        
        // Fourth Example Code Snippets
        // control + i to auto align code
        
        //        if (a < 10) {
        //            // simple comment
        //        } else {
        //            // some other stuff.
        //        }
        
        
        // Fifth Example Prefix / Postfix
        
        int a = 5;
        NSLog(@"The value of a is %i", ++a);
        
        int b = 5;
        NSLog(@"The value of b is %i", --b);
        
        // Turnery Example USE THIS INSTEAD OF IF ELSE STATEMENT ????
        
        int playerOne = 5;
        int playerTwo = 10;
        
        int highScore = (playerOne > playerTwo) ? playerOne : playerTwo ;
        NSLog(@"The high score of playerOne is %i", playerOne);
        
        // DO NOT USE IF ELSE STATEMENT
        
        //        if (playerOne > playerTwo) {
        //            highScore = playerOne;
        //        }
        //        else {
        //            highScore = playerTwo;
        //        }
        
        // Sixth Example - Loops
        
        
        //Setup Index
        int i = 1;
        
        // Check Condition
        while ( i < 10 ) {
            NSLog(@"The Value of i is %i", i);
            //Increment of the index
            i++;
        }
        
        
        // Example Seven Functions
        
        
        // int is the return type
        // myFunction = name
        // These are the paramteres (int x, int y)
        void myFunctionA (int x, int y);  {
            NSLog(@"We're in the function A");
            // loops, if statements, anything!
            //...
            
            //return 0; No return continues on to functionB
        }
        
        // void returns no value
        void myFunctionB (int x, int y);  {
            NSLog(@"We're in the function B");
            // loops, if statements, anything!
            //...
            
            //return 0; //return isn't needed in a void function
        }
        
        //Example Eight - Numeric Data Types
        
        float   myFLoat = 7.2f;
        double myDouble = 7.2;
        
        NSLog(@"The value of myFloat is %e", myFLoat);
        NSLog(@"The value of myDouble is %e", myDouble);
        
        int aa = 25;
        int bb = 2;
        float result = (float) aa / bb;
        NSLog(@"The result is %f", result);
        
        BOOL isCompleted = YES;
        // not bool, but BOOL
        //not true or false, but YES or NO
        
        if (isCompleted){
            
        }
        
        NSLog(@"The char is %i", isCompleted);
        //0 = no       1 = yes
        
        //bool myBool = true; DO NOT USE
        
        // Example Nine - Scope
        
        int foo = 10;
        
        for ( int i = 0; i < 10 ; i++) {
            //all sorts of stuff
            int foo = 55;
            bar++;
            myFunctionD(foo);
            NSLog(@"The value of foo is %i", foo);
        }
        NSLog(@"The value of foo is %i", foo);
        
        // Example 10 - Enumerations,  Enum for short
        
        
        
        seatPreference bobSeatPreference = aisle;
        seatPreference fredSeatPreference = window;
        //enum seatPreference joanSeatPreference = front;
        
        if (bobSeatPreference == window) {
            // do something
        }
        
        NSLog(@"Fred wants %i", fredSeatPreference);
        
        //Example 11 Preprocessor Directives
        
        int aaa = HIGHSCORE + 500;
        NSLog(@"%i", HIGHSCORE);
        aaa++;
  
    #if DEBUG          
        NSLog(@"The maximum value of an int is %i", INT_MAX);
    #endif
        
        
        return 0;
    }
}