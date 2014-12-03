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

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

@synthesize nameLabel;
@synthesize titleLabel;
@synthesize timeLabel;
@synthesize locationLabel;
@synthesize uniqueId = _uniqueId;

@synthesize favButton;



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

    //cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@, %@", info.name, info.time, info.location];
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
