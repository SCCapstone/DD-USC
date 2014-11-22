//
//  MasterViewController.h
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController
//{
  //  NSArray *_abstractsInfos;
//}

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic, retain) NSArray *abstractsInfos;


@end

