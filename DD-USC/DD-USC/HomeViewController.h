//
//  HomeViewController.h
//  DD-USC
//
//  Created by Casey Cole on 11/22/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *personalScheduleButton;
@property (weak, nonatomic) IBOutlet UIButton *masterScheduleButton;
@property (weak, nonatomic) IBOutlet UIButton *mapButton;
@property (weak, nonatomic) IBOutlet UIButton *faqButton;
@property (weak, nonatomic) IBOutlet UIImageView *logo;


@property (weak, nonatomic) IBOutlet UIButton *fbButton;

@end
