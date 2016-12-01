//
//  MyTableViewController.h
//  MyContactsTest
//
//  Created by H on 11/27/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableViewCell.h"

@interface MyTableViewController : UITableViewController
- (IBAction)DoAlert:(id)sender;

@property (assign, nonatomic) NSInteger segueRow;

@end
