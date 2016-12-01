//
//  MyTableViewCell.m
//  MyContactsTest
//
//  Created by H on 11/27/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

/*-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self)
    {
        imgCall = [[CallButton alloc] initWithFrame:CGRectMake(0,0,50,30)];
        [self addSubview:imgCall];
        // здесь еще твой код
    }
    return self;
}*/

@end
