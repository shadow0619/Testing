//
//  dateTimeNotify.m
//  Testing
//
//  Created by brian on 3/12/13.
//  Copyright (c) 2013 brian. All rights reserved.
//

#import "dateTimeNotify.h"
#import "NotificationController.h"

@interface dateTimeNotify ()
@property (weak, nonatomic) IBOutlet UIButton *cmdDateTimeNot;
@property (weak, nonatomic) IBOutlet UIDatePicker *dtpDateTimeNot;

@end

@implementation dateTimeNotify

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cmdDateTimeNotClick:(id)sender
{
    NotificationController *notify = [NotificationController alloc];
    [notify popMeAt:[NSString stringWithFormat:@"notified at %@",self.dtpDateTimeNot.date]:self.dtpDateTimeNot.date]; 
}

@end
