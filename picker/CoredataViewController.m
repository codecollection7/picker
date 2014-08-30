//
//  CoredataViewController.m
//  picker
//
//  Created by Mac on 8/24/14.
//  Copyright (c) 2014 Mac. All rights reserved.
//

#import "CoredataViewController.h"

@interface CoredataViewController ()
{
    NSMutableArray *pickerdata;
    UIDatePicker *mypickerview;
    
    UIDatePicker *myPicker;
}
@end

@implementation CoredataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    activityIndicator.alpha = 1.0;
    
    activityIndicator.center = CGPointMake(160, 140);
    activityIndicator.hidesWhenStopped = NO;
    
  //  [self.view addSubview:activityIndicator];
    
  //  [activityIndicator startAnimating];
    
    
    pickerdata= [[NSMutableArray alloc] initWithObjects:@"agra",@"mathura",@"rachi ",@"calcutta",
                 @"bombay",@"lucknow",@"delhi", nil];

    
    mypickerview   = [[UIDatePicker alloc] initWithFrame:CGRectMake(10, 100, 300, 200)];
    
 //   mypickerview.showsSelectionIndicator = YES;
    mypickerview.hidden = YES;
 //   mypickerview.delegate = self;
    
   // [self.view addSubview:mypickerview];
    
    
    CGRect pickerFrame = CGRectMake(0,150,0,0);
    
   myPicker = [[UIDatePicker alloc] initWithFrame:pickerFrame];
    [myPicker addTarget:self action:@selector(pickerChanged:)               forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:myPicker];
  }

- (void)pickerChanged:(id)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd "];
    //HH:mm:ss zzz
    //Optionally for time zone converstions
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
    
    NSString *stringFromDate = [formatter stringFromDate:[sender date]];
    
    name.text =stringFromDate ;
    
        myPicker.hidden=YES;
     [self.view endEditing:YES];
    
}

	// Do any additional setup after loading the view, typically from a nib.


- (void)textFieldDidBeginEditing:(UITextField *)textField
{
      [self.view endEditing:YES];
    
    myPicker.hidden=NO;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component; {
    return 7;
}


-(NSString*) pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [pickerdata objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
{
    //Write the required logic here that should happen after you select a row in Picker View.
    
    
    name.text=[pickerdata objectAtIndex:row];
    
    pickerView.hidden=YES;
    [self.view endEditing:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
