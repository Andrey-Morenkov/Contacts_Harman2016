//
//  HistoryContact.h
//  MyContactsTest
//
//  Created by H on 12/1/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "Contact.h"

@interface HistoryContact : Contact
{
    NSString *HistoryDate;
    NSString *HistoryTime;
}
@property (nonatomic) NSString* HistoryDate;
@property (nonatomic) NSString* HistoryTime;

-(NSString*) getDate;
-(NSString*) getTime;
-(void) setDate:(NSString*) _date;
-(void) setTime:(NSString*) _time;
@end
