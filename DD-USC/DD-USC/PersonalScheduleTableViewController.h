//
//  PersonalScheduleTableViewController.h
//  DD-USC
//
//  Created by Casey Cole on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalScheduleTableViewController : UITableViewController

//@property (nonatomic, retain) NSMutableArray *favorites;

+ (PersonalScheduleTableViewController*)perSchedule;

@property (nonatomic, retain) NSArray *abstractsInfos;

@end
