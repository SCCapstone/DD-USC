//
//  AbstractsDB.h
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

//@class Abstracts;
@interface AbstractsDB : NSObject
{
    sqlite3 *_database;
}

+ (AbstractsDB*)database;
- (NSArray *)abstractsInfos;


@end
