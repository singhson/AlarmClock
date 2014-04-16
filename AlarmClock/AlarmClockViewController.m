//
//  AlarmClockViewController.m
//  AlarmClock
//
//  Created by MacPC on 16/08/13.
//  Copyright (c) 2013 MacPC. All rights reserved.
//

#import "AlarmClockViewController.h"

@interface AlarmClockViewController ()

@end

@implementation AlarmClockViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self RunTimer];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) RunTimer
{
    MyTimer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                               target:self
                                             selector:@selector(ShowActivity)
                                             userInfo:Nil
                                              repeats:YES];
}

-(void) ShowActivity
{
    NSDateFormatter *MyFormatter = [[NSDateFormatter alloc] init];
    NSDate *Date = [NSDate date];
    [MyFormatter setTimeStyle:NSDateFormatterMediumStyle];
   [CurrentTimeLabel setText:[MyFormatter stringFromDate:Date]];

}
    @end
    
