//
//  SearchMasterViewController.h
//  DD-USC
//
//  Created by Casey Cole on 11/14/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

#import <Foundation/Foundation.h>

@interface SearchMasterViewController : UITableViewController
{
    NSArray *_abstractsInfos;
}

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic, retain) NSArray *abstractsInfos;


@end
