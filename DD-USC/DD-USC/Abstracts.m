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
@synthesize sCampus1 = _sCampus1;
@synthesize sMajor1 = _sMajor1;
@synthesize sMinor1 = _sMinor1;
@synthesize sCurrentYear1 = _sCurrentYear1;

@synthesize mFName1 = _mFName1;
@synthesize mLName1 = _mLName1;
@synthesize mCampus1 = _mCampus1;
@synthesize mCollege1 = _mCollege1;
@synthesize mDepartment1 = _mDepartment1;

@synthesize title = _title;
@synthesize Abstract = _Abstract;

@synthesize FinalTime = _FinalTime;
@synthesize Room = _Room;
@synthesize Format = _Format;
@synthesize Section = _Section;



- (id)initWithUniqueId:(int)uniqueId sFName1:(NSString *)sFName1 sLName1:(NSString*)sLName1 sCampus1:(NSString *)sCampus1 sMajor1:(NSString *)sMajor1 sMinor1:(NSString *)sMinor1 sCurrentYear1:(NSString *)sCurrentYear1 mFName1:(NSString *)mFName1 mLName1:(NSString *)mLName1 mCampus1:(NSString *)mCampus1 mCollege1:(NSString *)mCollege1 mDepartment1:(NSString *)mDepartment1 title:(NSString *)title Abstract:(NSString *)Abstract FinalTime:(NSString *)FinalTime Room:(NSString *)Room Format:(NSString *)Format Section:(NSString *)Section favored:(int)favored{
    if ((self = [super init])) {
        self.uniqueId = uniqueId;
        self.sFName1 = sFName1;
        self.sLName1 = sLName1;
        self.sCampus1 = sCampus1;
        self.sMajor1 = sMajor1;
        self.sMinor1 = sMinor1;
        self.sCurrentYear1 = sCurrentYear1;
        
        self.mFName1 = mFName1;
        self.mLName1 = mLName1;
        self.mCampus1 = mCampus1;
        self.mCollege1 = mCollege1;
        self.mDepartment1 = mDepartment1;
        
        self.title = title;
        self.Abstract = Abstract;
        
        self.FinalTime = FinalTime;
        self.Room = Room;
        self.Format = Format;
        self.Section = Section;
        self.favored = 0;
    }
    return self;
}

- (void) dealloc {
    self.sFName1 = nil;
    self.sLName1 = nil;
    self.sCampus1 = nil;
    self.sMajor1 = nil;
    self.sMinor1 = nil;
    self.sCurrentYear1 = nil;
    
    self.mFName1 = nil;
    self.mLName1 = nil;
    self.mCampus1 = nil;
    self.mCollege1 = nil;
    self.mDepartment1 = nil;
    self.title = nil;
    self.Abstract = nil;
    
    self.FinalTime = nil;
    self.Room = nil;
    self.Format = nil;
    self.Section = nil;
}

@end
