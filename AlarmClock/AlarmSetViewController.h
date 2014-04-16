//
//  AlarmSetViewController.h
//  AlarmClock
//
//  Created by MacPC on 16/08/13.
//  Copyright (c) 2013 MacPC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlarmSetViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *MyPicker;

-(void) GetAlertMessage : (NSString*) Message;
-(void) ScheduleLocalNotificationWithDate : (NSDate*) MyDate;
- (IBAction)SetAlarmButton:(id)sender;
- (IBAction)CancelAlarmButton:(id)sender;

@end
