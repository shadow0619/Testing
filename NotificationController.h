//
//  NotificationController.h
//  Testing
//
//  Created by brian on 3/11/13.
//  Copyright (c) 2013 brian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationController : NSObject

- (void) popMe:(NSString*)msg;
- (void) popMe:(NSString*)msg: (NSTimeInterval)secs;
- (void) popMeAt:(NSString*)msg: (NSDate*)whenTo;

@end
