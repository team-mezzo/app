//
//  NewDonationTableViewController.h
//  MezzoProt1
//
//  Created by Heejung Chung on 7/2/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MezzoPrototypeData.h"
#import "CurrentDonationsTableViewController.h"

@interface NewDonationTableViewController : UITableViewController

- (IBAction)orgChosen:(UIStoryboardSegue *)segue;

@property (strong, nonatomic) Donation *donation;

// Describe Donation Section Outlets

@property (weak, nonatomic) IBOutlet UITextView *foodDescription;
@property (weak, nonatomic) IBOutlet UISlider *rawFoodSlider;
@property (weak, nonatomic) IBOutlet UILabel *rawFoodAmtLabel;
@property (weak, nonatomic) IBOutlet UISlider *processedFoodSlider;
@property (weak, nonatomic) IBOutlet UILabel *processedFoodAmtLabel;

// Other Section Outlets

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UILabel *recipientLabel;

@end
