//
//  TestingFirstViewController.m
//  Testing
//
//  Created by brian on 3/11/13.
//  Copyright (c) 2013 brian. All rights reserved.
//

#import "TestingFirstViewController.h"
#import "NotificationController.h"

@interface TestingFirstViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtSelectedNotification;
@property (weak, nonatomic) IBOutlet UIPickerView *pckList;
@property (weak, nonatomic) IBOutlet UISwitch *msgExtender;
@property (weak, nonatomic) IBOutlet UITextField *extMsg;
@property (weak, nonatomic) IBOutlet UITextField *baseMsg;
@property (weak, nonatomic) IBOutlet UITextField *sliderNumber;
@property (weak, nonatomic) IBOutlet UITextField *stepperNumber;
@property (weak, nonatomic) IBOutlet UIStepper *stpTimeStepper;
@property (weak, nonatomic) IBOutlet UISlider *sldTimeSlider;

@end

@implementation TestingFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)popMe:(id)sender
{
    NotificationController *notify = [NotificationController alloc];
    if([self.msgExtender isOn])
    {
        [notify popMe:[NSString stringWithFormat:@"%@ %@ instant",self.baseMsg.text,self.extMsg.text]];
    }else
    {
        [notify popMe:[NSString stringWithFormat:@"%@ instant",self.baseMsg.text]];
    }
}

- (IBAction)sld_changed:(id)sender
{
    self.sliderNumber.text = [NSString stringWithFormat:@"%.0f",self.sldTimeSlider.value];
}
- (IBAction)popMeSoon:(id)sender
{
    NotificationController *notify = [NotificationController alloc];
    if([self.msgExtender isOn])
    {
        [notify popMe:[NSString stringWithFormat:@"%@ %@ paused %@ seconds",self.baseMsg.text,self.extMsg.text,self.sliderNumber.text]:[self.sliderNumber.text integerValue]];
    }else
    {
        [notify popMe:[NSString stringWithFormat:@"%@ paused %@ seconds",self.baseMsg.text,self.sliderNumber.text]:[self.sliderNumber.text integerValue]];
    }
}

- (IBAction)stepper_changed:(UIStepper *)sender
{
    self.stepperNumber.text = [NSString stringWithFormat:@"%.0f", self.stpTimeStepper.value];
}

- (IBAction)popMeMin:(id)sender
{
    NotificationController *notify = [NotificationController alloc];
    if([self.msgExtender isOn])
    {
        [notify popMe:[NSString stringWithFormat:@"%@ %@ paused %@ minutes",self.baseMsg.text,self.extMsg.text,self.stepperNumber.text]:[self.sliderNumber.text integerValue]*60];
    }else
    { 
        [notify popMe:[NSString stringWithFormat:@"%@ paused %@ minutes",self.baseMsg.text,self.stepperNumber.text]:[self.stepperNumber.text integerValue]*60];
    }
    ;
}
- (IBAction)txtNotPickSell:(id)sender
{
    self.pckList.hidden = false;
}

@end
