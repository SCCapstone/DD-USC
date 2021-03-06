//
//  InteriorViewController.m
//  DD-USC
//
//  Created by Dunlapmw1988 on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "InteriorViewController.h"

/*!
 @brief interface includes two properties to control the image
 @property *secondFloorImageView the variable to set the image view
 @property *scaleImage controls the scale of the image.
 */
@interface InteriorViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *secondFloorImageView;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@end
/*!
 @brief variables for the class this includes the interior view controller the button's synthesized and a counter initially set to 2.
 */

@implementation InteriorViewController


/*!
 @brief viewDidLoad here we used the synthesized 
 button too change its appearance and we loaded a preset image "Second Floor.jpg" to the image controller.
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.scrollView setBackgroundColor:[UIColor clearColor]];
    
    UIImage *image = [UIImage imageNamed:@"Second Floor.jpg"];
    
    [self.secondFloorImageView setImage:image];
    
    [self.scrollView addSubview:self.secondFloorImageView];
    [self.scrollView setContentSize:CGSizeMake(self.secondFloorImageView.frame.size.width, self.secondFloorImageView.frame.size.height)];
    self.scrollView.scrollEnabled = true;
    
    
    [self.view addSubview:self.scrollView];
}

/*!
 @brief didReceiveMemoryWarning no changes to this code merely passes the warning up.
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*!
 @brief scaleImage sets the image to a scale.
 */
- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer {
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
    recognizer.scale = 1;
}

- (IBAction)FirstFlr:(id)sender {
    UIImage *image = [UIImage imageNamed:@"First Floor.jpg"];
    self.secondFloorImageView.image = image;
    [self performSelector:@selector(setSelected:) withObject:sender afterDelay:0.0];
}

- (IBAction)SecondFlr:(id)sender {
    UIImage *image = [UIImage imageNamed:@"Second Floor.jpg"];
    self.secondFloorImageView.image = image;
    [self performSelector:@selector(setSelected:) withObject:sender afterDelay:0.0];}

- (IBAction)ThrdFloor:(id)sender {
    UIImage *image = [UIImage imageNamed:@"Third Floor.jpg"];
    self.secondFloorImageView.image = image;
    [self performSelector:@selector(setSelected:) withObject:sender afterDelay:0.0];
}


- (void) setSelected:(UIButton *) button {
        [button setHighlighted:YES];
    if(button == _FirstFloor)
    {
        [_SecondFloor setHighlighted:NO];
        [_ThirdFloor setHighlighted:NO];
    }
    else if (button == _SecondFloor)
    {
        [_FirstFloor setHighlighted:NO];
        [_ThirdFloor setHighlighted:NO];
    }
    else
    {
        [_FirstFloor setHighlighted:NO];
        [_SecondFloor setHighlighted:NO];
    }
    
}

- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
    
}



@end
