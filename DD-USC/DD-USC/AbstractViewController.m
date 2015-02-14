//
//  AbstractViewController.m
//  DD-USC
//
//  Created by Casey Cole on 2/14/15.
//  Copyright (c) 2015 Casey Cole. All rights reserved.
//

#import "AbstractViewController.h"

@interface AbstractViewController ()

@end

@implementation AbstractViewController

@synthesize fullAbstractText;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fullAbstractText.text = self.abstractText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
