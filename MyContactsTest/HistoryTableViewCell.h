//
//  HistoryTableViewCell.h
//  MyContactsTest
//
//  Created by H on 11/29/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *HFirstName;
@property (weak, nonatomic) IBOutlet UILabel *HSecondName;
@property (weak, nonatomic) IBOutlet UILabel *HWorkPhone;
@property (weak, nonatomic) IBOutlet UILabel *HTime;
@property (weak, nonatomic) IBOutlet UILabel *HDate;

@end
