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
#import "AbstractViewController.h"
#import "PersonalScheduleTableViewController.h"
#import "Favorites.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

@synthesize nameLabel;
@synthesize titleLabel;
@synthesize timeLabel;
@synthesize locationLabel;
@synthesize mentorInfo;
@synthesize mentorNameLabel;
@synthesize presenterInfo;
@synthesize uniqueId = _uniqueId;
@synthesize presentationType;
@synthesize fullAbstractText;
@synthesize favList;
@synthesize ids;
@synthesize abstractsInfos;
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
    self.mentorNameLabel.text = [NSString stringWithFormat:@"%@ %@", self.abstract.mFName1, self.abstract.mLName1];
    self.mentorInfo.text = [NSString stringWithFormat:@"%@, %@, %@", self.abstract.mCampus1, self.abstract.mCollege1, self.abstract.mDepartment1];
    self.presenterInfo.text = [NSString stringWithFormat:@"%@, %@, %@", self.abstract.sCurrentYear1, self.abstract.sCampus1, self.abstract.sMajor1];
    self.presentationType.text = [self.abstract.Format uppercaseString];
    self.fullAbstractText.text = self.abstract.Abstract;
    
    self.abstractsInfos = [AbstractsDB database].abstractsInfos;
    Favorites *favs= [Favorites FavoritesList];
    favList = favs.favList;
    ids = favs.ids;
    
    [self configureView];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAbstract"])
    {
        
        AbstractViewController *controller = segue.destinationViewController;
        controller.abstractText = self.abstract.Abstract;
        
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}



-(IBAction) addToSchedule:(id)sender
{
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
    if(buttonIndex == 0){
            NSLog(@"Cancel button clicked");
            return;
    }else if(buttonIndex == 1){
        NSUInteger count = 0;
        Abstracts *ab;
        
        if([favList containsObject:[NSString stringWithFormat:@"%@ %@ -- %@ -- %@", self.abstract.sFName1, self.abstract.sLName1, self.abstract.FinalTime, self.abstract.Room]])
        {
            [self addDupAlert];
            [alertView removeFromSuperview];
            return;
        }
        
        for(ab in self.abstractsInfos)
        {
            if(ab.uniqueId == self.abstract.uniqueId)
            {
                break;
            }
            count++;
        }
            [favList addObject:[NSString stringWithFormat:@"%@ %@ -- %@ -- %@", self.abstract.sFName1, self.abstract.sLName1, self.abstract.FinalTime, self.abstract.Room]];
            [ids addObject:[NSNumber numberWithUnsignedLong:count]];
            NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
            [def setObject:ids forKey:@"ids"];
            [def setObject:favList forKey:@"Favorites"];
        return;
    }else{
        return;
    }
}

- (void)addDupAlert
{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                              @"Error" message:@"This presenter is already on your Favorites list!" delegate:self
                                             cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [alertView show];
}

- (void)dupAlert:(UIAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex
{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
    return;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
