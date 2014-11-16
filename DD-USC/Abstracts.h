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
    NSString *_name;
    NSString *_title;
    NSString *_time;
    NSString *_location;
}

@property (nonatomic, assign) int uniqueId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *time;
@property (nonatomic, copy) NSString *location;

- (id)initWithUniqueId:(int)uniqueId name:(NSString *)name title:(NSString *)title
                  time:(NSString *)time location:(NSString *)location;

@end
