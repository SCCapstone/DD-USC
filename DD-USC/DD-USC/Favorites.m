//
//  Favorites.m
//  DD-USC
//
//  Created by Cole Mendes on 3/29/15.
//  Copyright (c) 2015 Casey Cole. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Favorites.h"

@implementation Favorites

@synthesize favList;

+ (id)FavoritesList
{
    static Favorites *gblFavoritesList = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{ gblFavoritesList = [[self alloc] init];});
    return gblFavoritesList;
}

- (id)init
{
    if(self = [super init])
    {
        NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
        NSArray *temp = [def objectForKey:@"Favorites"];
        if(temp == nil){
            favList = [[NSMutableArray alloc] init];
        }else{
            favList = [temp mutableCopy];
        }
    }
    return self;
}


@end
