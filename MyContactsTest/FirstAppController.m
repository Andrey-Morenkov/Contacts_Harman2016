//
//  FirstAppController.m
//  MyContactsTest
//
//  Created by H on 11/29/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "FirstAppController.h"
#import "GlobalVariable.h"
#import "Contact.h"

@interface FirstAppController ()

@end

@implementation FirstAppController

- (void)viewDidLoad
{
    NSUInteger masLength = [[GlobalVariable sharedVariable].myContacts count];
    if (masLength == 0)
    {
        // if array of my contacts is empty, we add a test contact
        Contact *testContact = [[Contact alloc] init];
        testContact.FirstName  = [NSMutableString stringWithString:@"Vasiliy"];
        testContact.SecondName = [NSMutableString stringWithString:@"Pupkin"];
        testContact.WorkPhone  = [NSMutableString stringWithString:@"+79991234567"];
        testContact.HomePhone  = [NSMutableString stringWithString:@"+79200927613"];
        [[GlobalVariable sharedVariable].myContacts addObject:testContact];
    }
    [super viewDidLoad];
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
