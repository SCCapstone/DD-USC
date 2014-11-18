//
//  AbstractsDB.m
//  DD-USC
//
//  Created by Casey Cole on 11/14/14.
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
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"test_db" ofType:@"sqlite3"];
        
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
    NSString *query = @"SELECT id, name, title, time, location FROM abstracts";
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
            Abstracts *info = [[Abstracts alloc] initWithUniqueId:uniqueId name:name title:title time:time location:location];
            [retval addObject:info];
        }
        sqlite3_finalize(statement);
    }
    return retval;
    
}

/*- (Abstracts *)abstractsInfos:(int)uniqueId
 {
 Abstracts *retval = nil;
 NSString *query = @"SELECT id, name, title, time, location FROM abstracts";
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
