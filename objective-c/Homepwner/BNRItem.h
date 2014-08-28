//
//  BNRItem.h
//  RandomItems
//
//  Created by Omer Wazir on 8/26/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
@property (nonatomic,copy) NSString *itemName;
@property (nonatomic,copy) NSString *serialNumber;
@property (nonatomic)   int valueInDollars;
@property (nonatomic,copy) NSDate *dateCreated;

+(instancetype)randomItem;

//Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)serialNumber;

-(instancetype)initWithItemName:(NSString *)name;

-(instancetype)init;

@end
