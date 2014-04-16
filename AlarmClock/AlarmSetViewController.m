//
//  AlarmSetViewController.m
//  AlarmClock
//
//  Created by MacPC on 16/08/13.
//  Copyright (c) 2013 MacPC. All rights reserved.
//

#import "AlarmSetViewController.h"

@interface AlarmSetViewController ()

@end

@implementation AlarmSetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.MyPicker.date=[NSDate date];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void) SnoozeButton:(id)sender
//{
//    NSDate *SnoozeTime = [[NSDate date] dateByAddingTimeInterval:60];
//    UILocalNotification *Notification = [[UILocalNotification alloc] init];
//    Notification.fireDate = SnoozeTime;
//    Notification.alertBody = @"Time To Wake Up";
//    Notification.soundName = @"Alarm.mp3";
//
//    [[UIApplication sharedApplication] scheduleLocalNotification:Notification];
//    
//}

-(void) GetAlertMessage:(NSString *)Message
{
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Alarm Clock" message:Message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertview show];
    
}

-(void) ScheduleLocalNotificationWithDate:(NSDate *)MyDate
{
    UILocalNotification *Notification = [[UILocalNotification alloc] init];
    Notification.fireDate = MyDate;
    Notification.alertBody = @"Time To Wake Up";
    Notification.soundName = @"Alarm.mp3";
    Notification.alertAction = @"Snooze";
    
    //Notification.hasAction=NO;
        [[UIApplication sharedApplication] scheduleLocalNotification:Notification];
    
    
}


- (IBAction)SetAlarmButton:(id)sender
{
    NSDateFormatter *MydateFormatter = [[NSDateFormatter alloc] init];
    MydateFormatter.timeZone = [NSTimeZone defaultTimeZone];
    MydateFormatter.timeStyle = NSDateFormatterMediumStyle;
    MydateFormatter.dateStyle = NSDateFormatterMediumStyle;
    NSString *DateTimeString = [ MydateFormatter stringFromDate:self.MyPicker.date];
    
    [self ScheduleLocalNotificationWithDate:self.MyPicker.date];
    
    [self GetAlertMessage:@"Alarm Set"];
    
    NSLog(@"Set Alarm Button%@", DateTimeString);
}

- (IBAction)CancelAlarmButton:(id)sender
{
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    [self GetAlertMessage:@"Alarm cancelled"];
     NSLog(@"Cancel Alarm Button");
    
}
@end
