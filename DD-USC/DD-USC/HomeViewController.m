//
//  HomeViewController.m
//  DD-USC
//
//  Created by Casey Cole on 11/22/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "HomeViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <FacebookSDK/FacebookSDK.h>

@implementation HomeViewController


@synthesize searchButton;
@synthesize personalScheduleButton;
@synthesize masterScheduleButton;
@synthesize mapButton;
@synthesize faqButton;
@synthesize fbButton;


- (void)configureView
{
    // Update the user interface for the detail item.
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    searchButton.layer.cornerRadius = 3;
    searchButton.layer.borderWidth = 1;
    searchButton.layer.borderColor = [[UIColor grayColor]CGColor];
    
    personalScheduleButton.layer.cornerRadius = 3;
    personalScheduleButton.layer.borderWidth = 1;
    personalScheduleButton.layer.borderColor = [[UIColor grayColor]CGColor];
    
    masterScheduleButton.layer.cornerRadius = 3;
    masterScheduleButton.layer.borderWidth = 1;
    masterScheduleButton.layer.borderColor = [[UIColor grayColor]CGColor];
    
    mapButton.layer.cornerRadius = 3;
    mapButton.layer.borderWidth = 1;
    mapButton.layer.borderColor = [[UIColor grayColor]CGColor];
    
    faqButton.layer.cornerRadius = 3;
    faqButton.layer.borderWidth = 1;
    faqButton.layer.borderColor = [[UIColor grayColor]CGColor];
    
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    FBLikeControl *like = [[FBLikeControl alloc] init];
    like.objectID = @"http://shareitexampleapp.parseapp.com/photo1/";
    like.center = CGPointMake(self.view.center.x, screenSize.height - 50);
    
    [self.view addSubview:like];
    
    [self configureView];
    
   
}

@end
