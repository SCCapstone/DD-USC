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
#import "Favorites.h"


@interface DetailViewController : UIViewController <UIAlertViewDelegate>
{
    int _uniqueId;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *presenterInfo;
@property (weak, nonatomic) IBOutlet UILabel *mentorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *mentorInfo;
@property (weak, nonatomic) IBOutlet UILabel *presentationType;
@property (nonatomic, retain) NSArray *abstractsInfos;
@property (weak, nonatomic) IBOutlet UITextView *fullAbstractText;
@property (nonatomic, retain) NSMutableArray *favList;
@property (nonatomic, retain) NSMutableArray *ids;

- (IBAction)addToSchedule:(id)sender;


@property (nonatomic, assign) int uniqueId;

@property (nonatomic, strong) Abstracts *abstract;




@end

