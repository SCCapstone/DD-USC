//
//  AbstractViewController.h
//  DD-USC
//
//  Created by Casey Cole on 2/14/15.
//  Copyright (c) 2015 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AbstractViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *fullAbstractText;
@property (weak, nonatomic) NSString *abstractText;

@end
