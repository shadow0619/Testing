//
//  NotificationController.m
//  Testing
//
//  Created by brian on 3/11/13.
//  Copyright (c) 2013 brian. All rights reserved.
//

#import "NotificationController.h"

@implementation NotificationController

-(void) popMe:(NSString*)msg
{
    UILocalNotification *localNot = [[UILocalNotification alloc] init];
    [localNot setAlertBody:msg];
    [localNot setFireDate:[NSDate dateWithTimeIntervalSinceNow:0]];
    [localNot setTimeZone:[NSTimeZone defaultTimeZone]];
    [localNot setAlertAction: @"View"];
    //localNot.alertBody = @"THIS IS MY FIRST NOTIFY - HELLO WORLD";
    UIApplication *app = [UIApplication sharedApplication];
    [app scheduleLocalNotification:localNot];
}

-(void) popMe:(NSString*)msg:(NSTimeInterval)secs
{
    UILocalNotification *localNot = [[UILocalNotification alloc] init];
    [localNot setAlertBody: msg];
    [localNot setFireDate:[NSDate dateWithTimeIntervalSinceNow:secs]];
    [localNot setTimeZone:[NSTimeZone defaultTimeZone]];
    [localNot setAlertAction: @"View"];
    //localNot.alertBody = @"THIS IS MY FIRST NOTIFY - HELLO WORLD";
    UIApplication *app = [UIApplication sharedApplication];
    [app scheduleLocalNotification:localNot];
}

@end
