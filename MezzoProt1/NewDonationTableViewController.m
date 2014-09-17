//
//  NewDonationTableViewController.m
//  MezzoProt1
//
//  Created by Heejung Chung on 7/2/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "NewDonationTableViewController.h"
#import "ChooseOrgTableViewController.h"

@interface NewDonationTableViewController ()


@end

@implementation NewDonationTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //update labels next to sliders
    [self updateFoodAmtLabels:self.rawFoodSlider];
    [self updateFoodAmtLabels:self.processedFoodSlider];
    
    // Uncomment the following line to preserve selection between presentations.
    self.clearsSelectionOnViewWillAppear = YES;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Properties

- (Donation *)donation
{
    if (!_donation) _donation = [[Donation alloc] init];
    return _donation;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger ret = 1;
    
    if (section == 0) ret = 3;
    
    return ret;
}

#pragma mark - IBActions

- (IBAction)updateFoodAmtLabels:(id)sender
{
    UISlider *amtSlider = sender;
    UILabel *amtLabel = (amtSlider == self.rawFoodSlider) ? self.rawFoodAmtLabel : self.processedFoodAmtLabel;
    
    amtLabel.text = [NSString stringWithFormat:@"%d lb", (int)amtSlider.value];
}

- (void)saveDonation
{
    //Describe Donation:
    self.donation.foodPortion.foodDescription = self.foodDescription.text;
    self.donation.foodPortion.rawAmtInlbs = [NSNumber numberWithInt:(int)self.rawFoodSlider.value];
    self.donation.foodPortion.processedAmtInlbs = [NSNumber numberWithInt:(int)self.processedFoodSlider.value];
    
    //Date & Time:
    self.donation.dateOfPickup = self.datePicker.date;
    
    //Recipient: taken care of when chosen org chosen
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Save New Donation"]) {
        if ([segue.destinationViewController isKindOfClass:[CurrentDonationsTableViewController class]]) {
            CurrentDonationsTableViewController *VC = (CurrentDonationsTableViewController *)segue.destinationViewController;
            [self saveDonation];
            [VC addDonation:self.donation];
            //[VC.currentDonations addObject:self.donation];
        }
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (IBAction)orgChosen:(UIStoryboardSegue *)segue
{
    self.recipientLabel.text = self.donation.recipient.businessName;
}















@end
