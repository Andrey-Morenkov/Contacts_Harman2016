//
//  InfoViewController.h
//  MyContactsTest
//
//  Created by H on 12/1/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController

@property (strong, nonatomic) NSMutableString *infFirstName;
@property (strong, nonatomic) NSMutableString *infSecondName;
@property (strong, nonatomic) NSMutableString *infHomePhone;
@property (strong, nonatomic) NSMutableString *infWorkPhone;
@property (assign, nonatomic) NSInteger index;

@property (weak, nonatomic) IBOutlet UITextField *FirstNameField;
@property (weak, nonatomic) IBOutlet UITextField *SecondNameField;
@property (weak, nonatomic) IBOutlet UITextField *WorkPhoneField;
@property (weak, nonatomic) IBOutlet UITextField *HomePhoneField;

- (IBAction)SaveClick:(id)sender;

@end
