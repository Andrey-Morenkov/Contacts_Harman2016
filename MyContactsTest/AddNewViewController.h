//
//  AddNewViewController.h
//  MyContactsTest
//
//  Created by H on 11/29/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddNewViewController : UIViewController
- (IBAction)SaveClick:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *FirstNameTF;
@property (strong, nonatomic) IBOutlet UITextField *SecondNameTF;
@property (strong, nonatomic) IBOutlet UITextField *WorkPhoneTF;
@property (strong, nonatomic) IBOutlet UITextField *HomePhoneTF;



@end
