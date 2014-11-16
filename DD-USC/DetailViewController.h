//
//  DetailViewController.h
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbstractsDB.h"
#import "Abstracts.h"


@interface DetailViewController : UIViewController
{
    UILabel *_timeLabel;
    UILabel *_locationLabel;
    int _uniqueId;
}
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@property (strong, nonatomic) id detailItem;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *locationLabel;
@property (nonatomic, assign) int uniqueId;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (nonatomic, strong) Abstracts *abstract;


@end

