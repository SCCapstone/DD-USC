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
    NSString *query = @"SELECT id, sFName1, sLName1, Title, TimeFinal, Room FROM abstract_data where id != 'id'";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int uniqueId = sqlite3_column_int(statement, 0);
            char *sFName1Chars = (char *) sqlite3_column_text(statement, 1);
            char *sLName1Chars = (char *) sqlite3_column_text(statement, 2);
            char *titleChars = (char *) sqlite3_column_text(statement, 3);
            char *FinalTimeChars = (char *) sqlite3_column_text(statement, 4);
            char *RoomChars = (char *) sqlite3_column_text(statement, 5);
            NSString *sFName1 = [[NSString alloc] initWithUTF8String:sFName1Chars];
            NSString *sLName1 = [[NSString alloc] initWithUTF8String:sLName1Chars];
            NSString *title = [[NSString alloc] initWithUTF8String:titleChars];
            NSString *FinalTime = [[NSString alloc] initWithUTF8String:FinalTimeChars];
            NSString *Room = [[NSString alloc] initWithUTF8String:RoomChars];
            Abstracts *info = [[Abstracts alloc] initWithUniqueId:uniqueId sFName1:sFName1 sLName1:sLName1 title:title FinalTime:FinalTime Room:Room];
            [retval addObject:info];
        }
        sqlite3_finalize(statement);
    }
    return retval;
    
}

/*- (Abstracts *)abstractsDetails:(int)uniqueId
{
    Abstracts *retval = nil;
    NSString *query = [NSString stringWithFormat:@"SELECT id, name, title, time, location FROM abstracts WHERE id = %d", uniqueId];
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int uniqueId = sqlite3_column_int(statement, 0);
            char *nameChars = (char *) sqlite3_column_text(statement, 1);
            char *titleChars = (char *) sqlite3_column_text(statement, 2);
            char *timeChars = (char *) sqlite3_column_text(statement, 3);
            char *locationChars = (char *) sqlite3_column_text(statement, 4);
            NSString *name = [[NSString alloc] initWithUTF8String:nameChars];
            NSString *title = [[NSString alloc] initWithUTF8String:titleChars];
            NSString *time = [[NSString alloc] initWithUTF8String:timeChars];
            NSString *location = [[NSString alloc] initWithUTF8String:locationChars];
           retval = [[Abstracts alloc] initWithUniqueId:uniqueId name:name title:title time:time location:location];

        }
        sqlite3_finalize(statement);
    }
    return retval;
}*/

- (void)dealloc
{
    sqlite3_close(_database);
}

@end