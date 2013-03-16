//
//  deleteNotification.m
//  Testing
//
//  Created by brian on 3/13/13.
//  Copyright (c) 2013 brian. All rights reserved.
//

#import "deleteNotification.h"

@interface deleteNotification ()
@property (weak, nonatomic) IBOutlet UIPickerView *pkrNotificationList;
@property (weak, nonatomic) IBOutlet UIButton *cmdDeleteNotification;

@end

@implementation deleteNotification

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
	// Do any additional setup after loading the view.
    
    for (UILocalNotification *note in [[UIApplication sharedApplication] scheduledLocalNotifications])
         {
          //   [self.pkrNotificationList s
         }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cmdDeleteNotification_click:(id)sender
{
    
}

@end
