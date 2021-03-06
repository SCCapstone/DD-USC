//
//  InteriorViewController.h
//  DD-USC
//
//  Created by Dunlapmw1988 on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InteriorViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *FirstFloor;
@property (strong, nonatomic) IBOutlet UIButton *SecondFloor;
@property (strong, nonatomic) IBOutlet UIButton *ThirdFloor;

-(IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer;
-(IBAction)handlePan:(UIPanGestureRecognizer *) recognizer;
-(void)setSelected:(UIButton *)button;

@end
