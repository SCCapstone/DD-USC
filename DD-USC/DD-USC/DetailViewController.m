//
//  DetailViewController.m
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "DetailViewController.h"
#import "Abstracts.h"
#import "AbstractsDB.h"
#import "PersonalScheduleTableViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

@synthesize nameLabel;
@synthesize titleLabel;
@synthesize timeLabel;
@synthesize locationLabel;
@synthesize uniqueId = _uniqueId;

//@synthesize addToSchedule;


- (void)configureView
{
    // Update the user interface for the detail item.

}


- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.nameLabel.text = self.abstract.sFName1;
    self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.abstract.sFName1, self.abstract.sLName1];
    self.titleLabel.text = self.abstract.title;
    self.timeLabel.text = self.abstract.FinalTime;
    self.locationLabel.text = self.abstract.Room;
    
    [self configureView];
}



-(IBAction) addToSchedule:(id)sender
{
    NSLog(@"add button clicked");
    PersonalScheduleTableViewController *perSchd = [[PersonalScheduleTableViewController alloc] initWithNibName:@"PersonalScheduleTableViewController" bundle:nil];
    [perSchd.favorites addObject:_abstract];
    [self addAlertView];
}

-(void)addAlertView
{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                              @"Add event to favorites" message:@"Are you sure?" delegate:self
                                             cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    [alertView show];
}

#pragma mark - Alert view delegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Cancel button clicked");
            break;
        case 1:
            NSLog(@"OK button clicked");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
