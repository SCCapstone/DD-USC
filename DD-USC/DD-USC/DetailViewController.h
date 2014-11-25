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
    int _uniqueId;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *favButton;

@property (nonatomic, assign) int uniqueId;

@property (nonatomic, strong) Abstracts *abstract;


@end

