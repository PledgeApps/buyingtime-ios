//
//  ViewController.m
//  BuyingTime
//
//  Created by Jeremy Zongker on 11/2/13.
//  Copyright (c) 2013 Pledge Apps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self refreshScreen];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) refreshScreen
{
    NSDate *currentTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"h:mma"];
    _timeLabel.text = [dateFormatter stringFromDate: currentTime];
    [dateFormatter setDateFormat:@"EEE: MMMM d"];
    _dateLabel.text = [dateFormatter stringFromDate: currentTime];

}


@end
