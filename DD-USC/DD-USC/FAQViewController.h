//
//  FAQViewController.h
//  DD-USC
//
//  Created by Chris Jenne on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FAQViewController : UIViewController

@property (weak,nonatomic) IBOutlet UIView *viewFAQ;
@property (weak, nonatomic) IBOutlet UIView *viewFAQ2;
//@property (strong, nonatomic) NSString *ans1;


-(IBAction)ButtonClicked:(id)sender;

@end


//self.labelname.text = "blagg balagg";