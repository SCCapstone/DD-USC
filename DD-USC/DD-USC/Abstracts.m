//
//  Abstracts.m
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "Abstracts.h"

@implementation Abstracts

@synthesize uniqueId = _uniqueId;
@synthesize sFName1 = _sFName1;
@synthesize sLName1 = _sLName1;
@synthesize title = _title;
@synthesize FinalTime = _FinalTime;
@synthesize Room = _Room;

- (id)initWithUniqueId:(int)uniqueId sFName1:(NSString *)sFName1 sLName1:(NSString*)sLName1 title:(NSString *)title
                  FinalTime:(NSString *)FinalTime Room:(NSString *)Room {
    if ((self = [super init])) {
        self.uniqueId = uniqueId;
        self.sFName1 = sFName1;
        self.sLName1 = sLName1;
        self.title = title;
        self.FinalTime = FinalTime;
        self.Room = Room;
    }
    return self;
}

- (void) dealloc {
    self.sFName1 = nil;
    self.sLName1 = nil;
    self.title = nil;
    self.FinalTime = nil;
    self.Room = nil;
}

@end
