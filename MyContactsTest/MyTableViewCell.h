//
//  MyTableViewCell.h
//  MyContactsTest
//
//  Created by H on 11/27/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CallButton.h"

@interface MyTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *firstName;
@property (strong, nonatomic) IBOutlet UILabel *secondName;
@property (strong, nonatomic) IBOutlet UILabel *telephone;
@property (strong, nonatomic) IBOutlet CallButton *imgCall;

@end

