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

@property (weak, nonatomic) IBOutlet UIImageView *secondFloorImageView;
@property (strong, nonatomic) IBOutlet UIPinchGestureRecognizer *scaleImage;

@end
/*!
 @brief variables for the class this includes the interior view controller the button synthesized and a counter initially set to 2.
 */
@implementation InteriorViewController
@synthesize ChangeFloor;
static int counter = 2;

/*!
 @brief viewDidLoad here we used the synthesized 
 button too change its appearance and we loaded a preset image "Second Floor.jpg" to the image controller.
 */
- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *image = [UIImage imageNamed:@"Second Floor.jpg"];
    self.secondFloorImageView.image = image;
    ChangeFloor.layer.cornerRadius = 3;
    ChangeFloor.layer.borderWidth = 1;
    ChangeFloor.layer.borderColor = [[UIColor grayColor]CGColor];
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
- (IBAction)scaleImage:(UIPinchGestureRecognizer *)recognizer
{
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
    recognizer.scale = 1;
}

/*!
 @brief FloorUp this is the buttons code it is set to switch between floors one and 2 however can be adjusted easily to increment between more floors.
 @property image this variable will change the image of secondFloorImageView depending on the code below.
 */
- (IBAction)FloorUp:(id)sender {
    UIImage *image;

    if(counter == 2)
    {
        counter++;
        image = [UIImage imageNamed:@"Third Floor.jpg"];
        self.secondFloorImageView.image = image;
    }
    else if(counter == 3)
    {
        counter--;
        image = [UIImage imageNamed:@"Second Floor.jpg"];
        self.secondFloorImageView.image = image;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
