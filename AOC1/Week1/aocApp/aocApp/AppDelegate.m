//
//  AppDelegate.m
//  aocApp
//
//  Created by Adam on 5/8/13.
//
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

// Additonal Function For Fun ;)
int grindTricks = 1;

void myFunctionD (int comboTricks) {
    comboTricks = comboTricks + 1;
    grindTricks++;
    NSLog(@"I am going to do %i combo tricks.", comboTricks);
    NSLog(@"Then, I am going to do %i grinds tricks.", grindTricks);
}// END Additonal Function For Fun ;)

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
   
    //NSString to start off my story
    NSString * myName = @"Hello, my name is Adam Du Puis.";
    NSLog(@"%@", myName);
 
    // Float data type & Cast float to int
    float myAge = 24.5f;
    int age = (int) myAge;
    float myNextAge = 25.f;
    int nextAge = (int) myNextAge;
    // Output
    NSLog(@"I turned %d in November.", age);
    NSLog(@"I am %.1f as of right now.", myAge);
    NSLog(@"I will be %d years old this November.", nextAge);
    // Closing Float data type & Cast float to int
    
    
    
    // AND/OR, float, int, BOOL.
    float skateYes = 10.0;
    int skateNo = 2.0;
    
    BOOL skate = YES;
    // if & else if
    if ((skate == 12.0) || (skateNo > 4.0)){
        NSLog(@"NO, I'm not going to skate today.");
    } else if ((skateNo > 1.0) && (skateYes > 6.0)) {
        NSLog(@"YES, I'm going to skate today.");
    } else {
        NSLog(@"I might skate today.");
    }// Closing AND/OR, float, int, BOOL.
    
//    else if ((conditionals)) { NSLog }
//    else { NSLog }
    
    // Single Loop
    int impossibleLateFlip = 2;
    for (int a = 2; a < 5; a++) {
        NSLog(@"I just landed %i impossible late flips!", impossibleLateFlip);
        impossibleLateFlip++;
    }// Closing Single Loop
    
    // While Loop
    //Seting up index
    int kickFLip = 2;   
    // Check Condition
    while ( kickFLip < 5 ) {
        NSLog(@"I am going to do %i kickflips in a row." ,kickFLip);
        //Increment of the index
        kickFLip++;
    }// Closing While Loop
    
    // Nested Loop 
    int treFlip = 2;
    int treFlipSuccess = 2;
    for (int a = 5; a <= 7; a++) {
        NSLog(@"I just landed %i tre flips!", treFlip);
        for (int b = 1; b <= treFlip; b++) {
            NSLog(@"I landed %i more tre flip successfully!", treFlipSuccess);
            treFlip++;
            treFlipSuccess++;
            break;
        }
    }// Closing Nested Loop 
    
    
    // Additonal Function For Fun ;)
    int flipTricks = 1; 
    for ( int i = 1; i < 2 ; i++) {
        int flipTricks = 1;
        grindTricks++;
        myFunctionD(flipTricks);
        NSLog(@"I have landed %i flip trick.", flipTricks);
    }
    NSLog(@"I have not landed %i flip trick.", flipTricks);
    // END Additonal Function For Fun ;)
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
