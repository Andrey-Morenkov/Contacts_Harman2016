//
//  InfoViewController.m
//  MyContactsTest
//
//  Created by H on 12/1/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "InfoViewController.h"
#import "Contact.h"
#import "GlobalVariable.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated
{
    self.FirstNameField.text  = self.infFirstName;
    self.SecondNameField.text = self.infSecondName;
    self.HomePhoneField.text  = self.infHomePhone;
    self.WorkPhoneField.text  = self.infWorkPhone;
    
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

- (IBAction)SaveClick:(id)sender
{
    Contact *tmpContact = [[Contact alloc] init];
    tmpContact.FirstName  = _FirstNameField.text;
    tmpContact.SecondName = _SecondNameField.text;
    tmpContact.WorkPhone  = _WorkPhoneField.text;
    tmpContact.HomePhone  = _HomePhoneField.text;
    [[GlobalVariable sharedVariable].myContacts replaceObjectAtIndex:self.index withObject:tmpContact];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
