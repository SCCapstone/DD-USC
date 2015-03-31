//
//  Favorites.h
//  DD-USC
//
//  Created by Cole Mendes on 3/29/15.
//  Copyright (c) 2015 Casey Cole. All rights reserved.
//

#ifndef DD_USC_Favorites_h
#define DD_USC_Favorites_h

@interface Favorites : NSObject
{
    NSMutableArray *favList;
}

@property (nonatomic, retain) NSMutableArray *favList;

+ (id)FavoritesList;

@end

#endif

