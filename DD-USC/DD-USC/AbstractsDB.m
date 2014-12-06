//
//  AbstractsDB.m
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "AbstractsDB.h"
#import "Abstracts.h"

@implementation AbstractsDB


static AbstractsDB *_database;

+ (AbstractsDB*)database
{
    if (_database == nil) {
        _database = [[AbstractsDB alloc] init];
    }
    return _database;
}

- (id)init
{
    if ((self = [super init])) {
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"Abstract_real" ofType:@"sqlite3"];
        
        if (sqlite3_open([sqLiteDb UTF8String], &_database) != SQLITE_OK)
        {
            NSLog(@"Failed to open database!");
        }
    }
    return self;
}

- (NSArray *)abstractsInfos
{
    
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"SELECT id, sFName1, sLName1, sCampus1, sMajor1, sMinor1, sCurrentYear1, mFName1, mLName1, mCampus1, mCollege1, mDepartment1, Title, Abstract, TimeFinal, Room, Format, Section FROM abstract_data where id != 'id'";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int uniqueId = sqlite3_column_int(statement, 0);
            char *sFName1Chars = (char *) sqlite3_column_text(statement, 1);
            char *sLName1Chars = (char *) sqlite3_column_text(statement, 2);
            char *sCampus1Chars = (char *) sqlite3_column_text(statement, 3);
            char *sMajor1Chars = (char *) sqlite3_column_text(statement, 4);
            char *sMinor1Chars = (char *) sqlite3_column_text(statement, 5);
            char *sCurrentYear1Chars = (char *) sqlite3_column_text(statement, 6);
            
            char *mFName1Chars = (char *) sqlite3_column_text(statement, 7);
            char *mLName1Chars = (char *) sqlite3_column_text(statement, 8);
            char *mCampus1Chars = (char *) sqlite3_column_text(statement, 9);
            char *mCollege1Chars = (char *) sqlite3_column_text(statement, 10);
            char *mDepartment1Chars = (char *) sqlite3_column_text(statement, 11);
            
            char *titleChars = (char *) sqlite3_column_text(statement, 12);
            char *AbstractChars = (char *) sqlite3_column_text(statement, 13);
            
            char *FinalTimeChars = (char *) sqlite3_column_text(statement, 14);
            char *RoomChars = (char *) sqlite3_column_text(statement, 15);
            char *FormatChars = (char *) sqlite3_column_text(statement, 16);
            char *SectionChars = (char *) sqlite3_column_text(statement, 17);
            
            NSString *sFName1 = [[NSString alloc] initWithUTF8String:sFName1Chars];
            NSString *sLName1 = [[NSString alloc] initWithUTF8String:sLName1Chars];
            NSString *sCampus1 = [[NSString alloc] initWithUTF8String:sCampus1Chars];
            NSString *sMajor1 = [[NSString alloc] initWithUTF8String:sMajor1Chars];
            NSString *sMinor1 = [[NSString alloc] initWithUTF8String:sMinor1Chars];
            NSString *sCurrentYear1 = [[NSString alloc] initWithUTF8String:sCurrentYear1Chars];
            
            NSString *mFName1 = [[NSString alloc] initWithUTF8String:mFName1Chars];
            NSString *mLName1 = [[NSString alloc] initWithUTF8String:mLName1Chars];
            NSString *mCampus1 = [[NSString alloc] initWithUTF8String:mCampus1Chars];
            NSString *mCollege1 = [[NSString alloc] initWithUTF8String:mCollege1Chars];
            NSString *mDepartment1 = [[NSString alloc] initWithUTF8String:mDepartment1Chars];
            
            NSString *title = [[NSString alloc] initWithUTF8String:titleChars];
            NSString *Abstract = [[NSString alloc] initWithUTF8String:AbstractChars];
            
            NSString *FinalTime = [[NSString alloc] initWithUTF8String:FinalTimeChars];
            NSString *Room = [[NSString alloc] initWithUTF8String:RoomChars];
            NSString *Format = [[NSString alloc] initWithUTF8String:FormatChars];
            NSString *Section = [[NSString alloc] initWithUTF8String:SectionChars];
            
            Abstracts *info = [[Abstracts alloc] initWithUniqueId:uniqueId sFName1:sFName1 sLName1:sLName1 sCampus1:sCampus1 sMajor1:sMajor1 sMinor1:sMinor1 sCurrentYear1:sCurrentYear1 mFName1:mFName1 mLName1:mLName1 mCampus1:mCampus1 mCollege1:mCollege1 mDepartment1:mDepartment1 title:title Abstract:Abstract FinalTime:FinalTime Room:Room Format:Format Section:Section];
            [retval addObject:info];
        }
        sqlite3_finalize(statement);
    }
    return retval;
    
}

- (void)dealloc
{
    sqlite3_close(_database);
}

@end