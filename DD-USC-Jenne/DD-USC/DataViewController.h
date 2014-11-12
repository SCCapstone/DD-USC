//
//  DataViewController.h
//  DD-USC
//
//  Created by Casey Cole on 10/29/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;
@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end

