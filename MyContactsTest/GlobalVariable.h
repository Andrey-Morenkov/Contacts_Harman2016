//
//  GlobalVariable.h
//  MyContactsTest
//
//  Created by H on 11/29/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalVariable : NSObject
{
    NSMutableArray *myContacts;
    NSMutableArray *historyCalls;
}

@property (nonatomic, retain) NSMutableArray *myContacts;
@property (nonatomic, retain) NSMutableArray *historyCalls;

+(GlobalVariable *)sharedVariable;
- (void)sort;


@end
