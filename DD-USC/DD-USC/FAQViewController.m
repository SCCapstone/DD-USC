//
//  FAQViewController.m
//  DD-USC
//
//  Created by Chris Jenne on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "FAQViewController.h"

@interface FAQViewController ()

@end

@implementation FAQViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1000)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//Code to make text appear as an animation
-(IBAction)ButtonClicked:(id)sender
{
    if(_viewFAQ.alpha == 0)
    {
        //_viewFAQ.hidden = false;
        
        //animation
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.5];
        [UIView setAnimationDelay:0.2];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        
        [_viewFAQ setBackgroundColor:[UIColor redColor]];
        _viewFAQ.alpha = 1;
        [UIView commitAnimations];
        
    }
    else
    {
        //_viewFAQ.hidden = true;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.5];
        [UIView setAnimationDelay:0.2];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        
        [_viewFAQ setBackgroundColor:[UIColor whiteColor]];
        _viewFAQ.alpha = 0;
        [UIView commitAnimations];

    }
    
    if(_viewFAQ2.alpha == 0)
    {
        //animation
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.5];
        [UIView setAnimationDelay:0.2];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        
        [_viewFAQ2 setBackgroundColor:[UIColor redColor]];
        _viewFAQ2.alpha = 1;
        [UIView commitAnimations];
        
    }
    else
    {
        //_viewFAQ.hidden = true;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.5];
        [UIView setAnimationDelay:0.2];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        
        [_viewFAQ2 setBackgroundColor:[UIColor whiteColor]];
        _viewFAQ2.alpha = 0;
        [UIView commitAnimations];
        
    }//end animation loops

}


@end
