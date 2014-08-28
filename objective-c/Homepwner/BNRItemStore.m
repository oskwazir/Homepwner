//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Omer Wazir on 8/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation BNRItemStore

+(instancetype)sharedStore{
    static BNRItemStore *sharedStore;
    
    //Do I need to create a sharedStore
    if(!sharedStore){
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

-(NSArray *)allItems{
    return [self.privateItems copy];
}

-(BNRItem *)createItem{
    BNRItem *randomItem = [BNRItem randomItem];
    [self.privateItems addObject:randomItem];
    return randomItem;
}


//Calling init will not work on purpose
-(instancetype)init{
    [NSException raise:@"Singleton"
                format:@"Use [BNRItemStore sharedStore]"];
    return nil;
}

//Super secret initializer not exposed publically
-(instancetype) initPrivate{
    
    self = [super init];
    
    if(self){
        _privateItems = [[NSMutableArray alloc] init];
    }
    
    return self;

}

@end
