//
//  CurrentDonationsTableViewController.h
//  MezzoProt1
//
//  Created by Heejung Chung on 7/2/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MezzoCurrentDonationTableViewCell.h"
#import "MezzoPrototypeData.h"
#import "DonationDetailsTableViewController.h"
#import "NewDonationTableViewController.h"
#import "DonationDownloader.h"

@interface CurrentDonationsTableViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *currentDonations;

- (void)addDonation:(Donation *)donation;

@end
