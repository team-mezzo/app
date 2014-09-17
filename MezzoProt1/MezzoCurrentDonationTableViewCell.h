//
//  MezzoCurrentDonationTableViewCell.h
//  MezzoProt1
//
//  Created by Heejung Chung on 7/5/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MezzoCurrentDonationTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *statusBar;
@property (weak, nonatomic) IBOutlet UILabel *dateAndTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *recipientLabel;

@end