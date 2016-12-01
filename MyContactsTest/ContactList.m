//
//  ContactList.m
//  MyContactsTest
//
//  Created by H on 11/30/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(void) addContact: (Contact*) _contact
{
    [self addObject:_contact];
}

@end
