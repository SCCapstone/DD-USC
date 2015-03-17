//
//  Abstracts.h
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Abstracts : NSObject {
    int _uniqueId;
    NSString *_sFName1;
    NSString *_sLName1;
    NSString *_sCampus1;
    NSString *_sMajor1;
    NSString *_sMinor1;
    NSString *_sCurrentYear1;
    
    NSString *_mFName1;
    NSString *_mLName1;
    NSString *_mCampus1;
    NSString *_mCollege1;
    NSString *_mDepartment1;
    
    NSString *_title;
    NSString *_Abstract;
    
    NSString *_FinalTime;
    NSString *_Room;
    NSString *_Format;
    NSString *_Section;
    int _favored;
    
}

@property (nonatomic, assign) int uniqueId;
@property (nonatomic, copy) NSString *sFName1;
@property (nonatomic, copy) NSString *sLName1;
@property (nonatomic, copy) NSString *sCampus1;
@property (nonatomic, copy) NSString *sMajor1;
@property (nonatomic, copy) NSString *sMinor1;
@property (nonatomic, copy) NSString *sCurrentYear1;

@property (nonatomic, copy) NSString *mFName1;
@property (nonatomic, copy) NSString *mLName1;
@property (nonatomic, copy) NSString *mCampus1;
@property (nonatomic, copy) NSString *mCollege1;
@property (nonatomic, copy) NSString *mDepartment1;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *Abstract;

@property (nonatomic, copy) NSString *FinalTime;
@property (nonatomic, copy) NSString *Room;
@property (nonatomic, copy) NSString *Format;
@property (nonatomic, copy) NSString *Section;
@property (nonatomic, assign) int favored;


- (id)initWithUniqueId:(int)uniqueId sFName1:(NSString *)sFName1 sLName1:(NSString*)sLName1 sCampus1:(NSString *)sCampus1 sMajor1:(NSString *)sMajor1 sMinor1:(NSString *)sMinor1 sCurrentYear1:(NSString *)sCurrentYear1 mFName1:(NSString *)mFName1 mLName1:(NSString *)mLName1 mCampus1:(NSString *)mCampus1 mCollege1:(NSString *)mCollege1 mDepartment1:(NSString *)mDepartment1 title:(NSString *)title Abstract:(NSString *)Abstract FinalTime:(NSString *)FinalTime Room:(NSString *)Room Format:(NSString *)Format Section:(NSString *)Section favored:(int)favored;

@end
