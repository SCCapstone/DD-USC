//
//  Abstracts.m
//  DD-USC
//
//  Created by Casey Cole on 11/14/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "Abstracts.h"

@implementation Abstracts

@synthesize uniqueId = _uniqueId;
@synthesize name = _name;
@synthesize title = _title;
@synthesize time = _time;
@synthesize location = _location;

- (id)initWithUniqueId:(int)uniqueId name:(NSString *)name title:(NSString *)title
                  time:(NSString *)time location:(NSString *)location {
    if ((self = [super init])) {
        self.uniqueId = uniqueId;
        self.name = name;
        self.title = title;
        self.time = time;
        self.location = location;
    }
    return self;
}

- (void) dealloc {
    self.name = nil;
    self.title = nil;
    self.time = nil;
    self.location = nil;
}

@end
