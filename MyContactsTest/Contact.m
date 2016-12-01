//
//  Contact.m
//  MyContactsTest
//
//  Created by H on 11/29/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "Contact.h"

@implementation Contact

@synthesize FirstName;
@synthesize SecondName;
@synthesize WorkPhone;
@synthesize HomePhone;

-(Contact*)initWithFirstName:(NSMutableString*)_firstName andSecondName:(NSMutableString*)_secondName andHomePhone:(NSMutableString*)_homePhone andWorkPhone:(NSMutableString*)_workPhone
{
    Contact* tmp = [[Contact alloc] init];
    tmp->FirstName  = _firstName;
    tmp->SecondName = _secondName;
    tmp->HomePhone  = _homePhone;
    tmp->WorkPhone  = _workPhone;
    return tmp;
}

-(void) setFirstName:(NSMutableString *)_firstName
{
    self->FirstName = _firstName;
}

-(void) setSecondName:(NSMutableString *)_secondName
{
    self->SecondName = _secondName;
}

-(void) setHomePhone:(NSMutableString *)_homePhone
{
    self->HomePhone = _homePhone;
}

-(void) setWorkPhone:(NSMutableString *)_workPhone
{
    self->WorkPhone = _workPhone;
}

-(NSMutableString*) getFirstName
{
    return self->FirstName;
}
-(NSMutableString*) getSecondName
{
    return self->SecondName;
}
-(NSMutableString*) getWorkPhone
{
    return self->WorkPhone;
}
-(NSMutableString*) getHomePhone
{
    return self->HomePhone;
}
@end
