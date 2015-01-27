//
//  RHLocation.h
//  DD-USC
//
//  Created by Dunlapmw1988 on 11/13/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//
/*!
 @Brief variables this class is based on the tutorial I did, and is only to store the variables for location.  Further implementations are still possible however variable assignment is done in RHLocationDataController.m
 */
#import <Foundation/Foundation.h>

@interface RHLocation : NSObject

@property (strong, nonatomic) NSString *address;

@property (strong, nonatomic) NSString *building;

@property (strong, nonatomic) NSString *urlString;


@property (nonatomic) float latitude;

@property (nonatomic) float longitude;

@end
