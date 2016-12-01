//
//  Contact.h
//  MyContactsTest
//
//  Created by H on 11/29/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
{
    NSMutableString *FirstName;
    NSMutableString *SecondName;
    NSMutableString *WorkPhone;
    NSMutableString *HomePhone;
}

@property (nonatomic) NSMutableString* FirstName;
@property (nonatomic) NSMutableString* SecondName;
@property (nonatomic) NSMutableString* WorkPhone;
@property (nonatomic) NSMutableString* HomePhone;


-(Contact* )initWithFirstName:(NSMutableString*)_firstName andSecondName:(NSMutableString*)_secondName andHomePhone:(NSMutableString*)_homePhone andWorkPhone:(NSMutableString*)_workPhone;
-(NSMutableString*) getFirstName;
-(NSMutableString*) getSecondName;
-(NSMutableString*) getWorkPhone;
-(NSMutableString*) getHomePhone;
-(void) setFirstName:(NSMutableString *)_firstName;
-(void) setSecondName:(NSMutableString *)_secondName;
-(void) setHomePhone:(NSMutableString *)_homePhone;
-(void) setWorkPhone:(NSMutableString *)_workPhone;
@end
