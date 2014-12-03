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
    NSString *_title;
    NSString *_FinalTime;
    NSString *_Room;
}

@property (nonatomic, assign) int uniqueId;
@property (nonatomic, copy) NSString *sFName1;
@property (nonatomic, copy) NSString *sLName1;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *FinalTime;
@property (nonatomic, copy) NSString *Room;

- (id)initWithUniqueId:(int)uniqueId sFName1:(NSString *)sFName1 sLName1:(NSString*)sLName1 title:(NSString *)title
             FinalTime:(NSString *)FinalTime Room:(NSString *)Room;

@end
