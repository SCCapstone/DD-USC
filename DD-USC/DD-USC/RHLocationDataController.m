//
//  RHLocationDataController.m
//  DD-USC
//
//  Created by Dunlapmw1988 on 11/13/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

/*!
 @brief RHLocationDataController.h only holds
 the values of the variables from RHLocation.m
 this will make it easy to change the variables later as you will not need to look for them through a mass amount of code.
 @property latitude was taken from google maps link to russel house after typing in the address.
 @property longitude was also taken from google maps
 */
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
