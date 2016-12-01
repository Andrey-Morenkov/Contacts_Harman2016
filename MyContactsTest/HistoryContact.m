//
//  HistoryContact.m
//  MyContactsTest
//
//  Created by H on 12/1/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "HistoryContact.h"

@implementation HistoryContact

@synthesize HistoryDate;
@synthesize HistoryTime;

-(NSString*) getDate
{
    return self.HistoryDate;
}
-(NSString*) getTime
{
    return self.HistoryTime;
}
-(void) setDate:(NSString*) _date
{
    self.HistoryDate = _date;
}
-(void) setTime:(NSString*) _time
{
    self.HistoryTime = _time;
}
@end
