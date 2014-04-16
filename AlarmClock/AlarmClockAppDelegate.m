//
//  AlarmClockAppDelegate.m
//  AlarmClock
//
//  Created by MacPC on 16/08/13.
//  Copyright (c) 2013 MacPC. All rights reserved.
//

#import "AlarmClockAppDelegate.h"
#import "AlarmSetViewController.h"

@implementation AlarmClockAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    UILocalNotification *localNotification = [launchOptions objectForKey:UIApplicationLaunchOptionsLocalNotificationKey];
//    
//    if(localNotification)
//    {
//        UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Alarm" delegate:self cancelButtonTitle:@"Snooze" otherButtonTitles:@"Cancel Alarm", nil,nil];
//        
//        [alertview show];
//    }
    
    // Override point for customization after application launch.
    return YES;
}

-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Alarm" delegate:self cancelButtonTitle:@"Snooze" otherButtonTitles:@"Cancel Alarm", nil,nil];
    
    [alertview show];
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

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==0)
    {
        
        NSDate *SnoozeTime = [[NSDate date] dateByAddingTimeInterval:60];
        UILocalNotification *Notification = [[UILocalNotification alloc] init];
        Notification.fireDate = SnoozeTime;
        Notification.alertBody = @"Time To Wake Up";
        Notification.soundName = @"Alarm.mp3";
        
        [[UIApplication sharedApplication] scheduleLocalNotification:Notification];
    }
    else
    {
        [[UIApplication sharedApplication] cancelAllLocalNotifications];
        NSLog(@"Cancel Alarm Button");

    }
    
}

@end
