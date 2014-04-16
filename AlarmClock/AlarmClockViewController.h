//
//  AlarmClockViewController.h
//  AlarmClock
//
//  Created by MacPC on 16/08/13.
//  Copyright (c) 2013 MacPC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlarmClockViewController : UIViewController
{
    NSTimer *MyTimer;
    IBOutlet UILabel *CurrentTimeLabel;
    
    
}

-(void) RunTimer;
-(void) ShowActivity;


@end
