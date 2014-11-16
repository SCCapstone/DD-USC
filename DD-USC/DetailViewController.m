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

@synthesize nameLabel = _nameLabel;
@synthesize titleLabel = _titleLabel;
@synthesize timeLabel = _timeLabel;
@synthesize locationLabel = _locationLabel;
@synthesize uniqueId = _uniqueId;

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.detailItem)
    {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.nameLabel.text = _abstract.name;
    self.titleLabel.text = _abstract.title;
    self.timeLabel.text = _abstract.time;
    self.locationLabel.text = _abstract.location;
    
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
