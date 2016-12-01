//
//  ContactList.h
//  MyContactsTest
//
//  Created by H on 11/30/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSMutableArray

-(void) addContact: (Contact*) _contact;

@end
