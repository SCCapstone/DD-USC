//
//  HomeViewController.m
//  DD-USC
//
//  Created by Casey Cole on 11/22/14.
//  Copyright (c) 2014 Casey Cole, Cole Mendes, Chris Jenne, Michael Dunlap. All rights reserved.
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
@synthesize logo;

- (void)configureView
{
    // Update the user interface for the detail item.
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    logo.center = CGPointMake(self.view.center.x, logo.center.y);
    
    searchButton.layer.cornerRadius = 3;
    searchButton.layer.borderWidth = 1;
    searchButton.layer.borderColor = [[UIColor grayColor]CGColor];
     
    lab.center = CGPointMake(self.view.center.x, self.view.center.x);
    searchButton.center = CGPointMake(self.view.center.x, searchButton.center.y);

    personalScheduleButton.layer.cornerRadius = 3;
    personalScheduleButton.layer.borderWidth = 1;
    personalScheduleButton.layer.borderColor = [[UIColor grayColor]CGColor];
    personalScheduleButton.center = CGPointMake(self.view.center.x, personalScheduleButton.center.y);
    
    masterScheduleButton.layer.cornerRadius = 3;
    masterScheduleButton.layer.borderWidth = 1;
    masterScheduleButton.layer.borderColor = [[UIColor grayColor]CGColor];
    masterScheduleButton.center = CGPointMake(self.view.center.x, masterScheduleButton.center.y);
    
    mapButton.layer.cornerRadius = 3;
    mapButton.layer.borderWidth = 1;
    mapButton.layer.borderColor = [[UIColor grayColor]CGColor];
    mapButton.center = CGPointMake(self.view.center.x, mapButton.center.y);
    
    faqButton.layer.cornerRadius = 3;
    faqButton.layer.borderWidth = 1;
    faqButton.layer.borderColor = [[UIColor grayColor]CGColor];
    faqButton.center = CGPointMake(self.view.center.x, faqButton.center.y);
    
    FBLikeControl *like = [[FBLikeControl alloc] init];
    like.objectID = @"https://www.facebook.com/GamecockOUR";
    like.center = CGPointMake(self.view.center.x + screenSize.width/4, screenSize.height - 50);
 
    //Add the twitter follow button
    NSString *twitterFollowButton = @"<style>body{background-color:transparent}</style><a class='twitter-follow-button' href='https://twitter.com/gamecock_OUR' data-show-count='false' data-lang='en' data-width='120'> Follow @twitterapi </a> <script type='text/javascript'> window.twttr = (function (d, s, id) { var t, js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src= 'https://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); return window.twttr || (t = { _e: [], ready: function (f) { t._e.push(f) } }); }(document, 'script', 'twitter-wjs')); </script>";
    CGRect viewRect = CGRectMake(0, 0, 130, 30);
    UIWebView* TwitterView = [[UIWebView alloc] initWithFrame:viewRect];
    TwitterView.opaque = NO;
    TwitterView.backgroundColor = [UIColor clearColor];
    [TwitterView loadHTMLString:twitterFollowButton baseURL:nil];
    TwitterView.center = CGPointMake(self.view.center.x - screenSize.width/4, screenSize.height - 50);
    [self.view addSubview:TwitterView];
    
    //Invisible button to link to twitter app or safari
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(twitterButton:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(0, 0, 130, 30);
    button.center = CGPointMake(self.view.center.x - screenSize.width/4, screenSize.height - 50);
    [self.view addSubview:button];
    */
    
    [self configureView];
    
   
}

//Function to deal with follow button being pressed
- (IBAction)twitterButton:(id)sender
{ //twitter icon source: iconfinder.com
    if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=gamecock_OUR"]]) {
        
        if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/@gamecock_OUR"]]) {
            
        }
    }
}


- (IBAction)fbButton:(id)sender
{ //facebook icon source: findicons.com
    if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"fb://profile/gamecockOUR"]]) {
        
        if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com/gamecockOUR"]]) {
            
        }
    }
}


@end
