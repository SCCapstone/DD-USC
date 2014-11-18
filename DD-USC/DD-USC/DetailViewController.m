//
//  DetailViewController.m
//  DD-USC
//
//  Created by Casey Cole on 11/14/14.
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
    /*Abstracts *details = [[AbstractsDB database] abstractsInfos:_uniqueId];
     if (details != nil)
     {
     [_nameLabel setText:details.name];
     [_titleLabel setText:details.title];
     [_timeLabel setText:details.time];
     [_locationLabel setText:details.location];
     }*/
    /*UILabel *aLabel = [[UILabel alloc]initWithFrame: CGRectMake(20, 200, 280, 80)];
     aLabel.numberOfLines = 0;
     aLabel.textColor = [UIColor blueColor];
     aLabel.backgroundColor = [UIColor clearColor];
     aLabel.textAlignment = UITextAlignmentCenter;
     aLabel.text = @"This is a sample text\n of multiple lines. here number of lines is not limited.";
     [self.view addSubview:aLabel];*/
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.nameLabel.text = _abstract.name;
    self.titleLabel.text = _abstract.title;
    self.timeLabel.text = _abstract.time;
    self.locationLabel.text = _abstract.location;
    
    /* NSMutableString *ingredientText = [NSMutableString string];
     for (NSString* ingredient in recipe.ingredients) {
     [ingredientText appendFormat:@"%@\n", ingredient];
     }
     self.ingredientTextView.text = ingredientText;*/
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
