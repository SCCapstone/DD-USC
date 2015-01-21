//
//  InteriorViewController.m
//  DD-USC
//
//  Created by Dunlapmw1988 on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "InteriorViewController.h"

@interface InteriorViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *secondFloorImageView;
@property (strong, nonatomic) IBOutlet UIPinchGestureRecognizer *scaleImage;

@end

@implementation InteriorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:@"Second Floor.jpg"];
    self.secondFloorImageView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scaleImage:(UIPinchGestureRecognizer *)recognizer
{
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
    recognizer.scale = 1;
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
