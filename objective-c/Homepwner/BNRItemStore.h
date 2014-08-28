//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Omer Wazir on 8/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic,readonly,copy) NSArray *allItems;


+(instancetype)sharedStore;
-(BNRItem *)createItem;

@end
