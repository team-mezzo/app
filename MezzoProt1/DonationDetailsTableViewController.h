//
//  DonationDetailsTableViewController.h
//  MezzoProt1
//
//  Created by Heejung Chung on 7/9/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Donation.h"

@interface DonationDetailsTableViewController : UITableViewController

//outlets
@property (weak, nonatomic) IBOutlet UITextView *foodDescription;
@property (weak, nonatomic) IBOutlet UILabel *rawFoodLabel;
@property (weak, nonatomic) IBOutlet UILabel *processedFoodLabel;

@property (weak, nonatomic) IBOutlet UILabel *DOWTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateSpecificLabel;

@property (weak, nonatomic) IBOutlet UILabel *recipientBusinessName;

//properties
@property (strong, nonatomic) Donation *donation;

@end
