//
//  AddNewViewController.m
//  MyContactsTest
//
//  Created by H on 11/29/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "AddNewViewController.h"
#import "GlobalVariable.h"
#import "Contact.h"

@interface AddNewViewController ()

@end

@implementation AddNewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)SaveClick:(id)sender
{
    Contact *tmpContact = [[Contact alloc] init];
    tmpContact.FirstName  = _FirstNameTF.text;
    tmpContact.SecondName = _SecondNameTF.text;
    tmpContact.WorkPhone  = _WorkPhoneTF.text;
    tmpContact.HomePhone  = _HomePhoneTF.text;
    
    if ([tmpContact.SecondName  isEqual: @""] & [tmpContact.WorkPhone  isEqual: @""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"WARNING"
                                                        message:@"Please insert at least SecondName and WorkPhone"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    else
    {
        [[GlobalVariable sharedVariable].myContacts addObject:tmpContact];
    }
}

@end
