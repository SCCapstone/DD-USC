//
//  RHLocationDataController.m
//  DD-USC
//
//  Created by Dunlapmw1988 on 11/13/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "RHLocationDataController.h"

@implementation RHLocationDataController

- (RHLocation*)getRusselHouseLoc
{
    RHLocation *myLocation = [[RHLocation alloc] init];
    myLocation.address = @"1400 Greene St, Columbia, SC 29208";
    myLocation.building = @"Russell House University Union";
    myLocation.urlString =  @"http://maps.apple.com/maps?daddr=1400+Greene+St,+Columbia,+SC+29208";
    myLocation.latitude = 33.996497;
    myLocation.longitude = -81.0271789;
    
    return myLocation;
}

@end
