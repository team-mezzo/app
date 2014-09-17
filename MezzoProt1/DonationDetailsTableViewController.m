//
//  DonationDetailsTableViewController.m
//  MezzoProt1
//
//  Created by Heejung Chung on 7/9/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "DonationDetailsTableViewController.h"

@interface DonationDetailsTableViewController ()

@end

@implementation DonationDetailsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //SET UP OUTLETS
    self.foodDescription.text = self.donation.foodPortion.foodDescription;
    self.rawFoodLabel.text = [NSString stringWithFormat:@"%@ lb Raw Food", self.donation.foodPortion.rawAmtInlbs];
    self.processedFoodLabel.text = [NSString stringWithFormat:@"%@ lb Processed Food", self.donation.foodPortion.processedAmtInlbs];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE"];
    NSString *string = [formatter stringFromDate:self.donation.dateOfPickup];
    
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    string = [string stringByAppendingString:[NSString stringWithFormat:@" @ %@",[formatter stringFromDate:self.donation.dateOfPickup]]];
    self.DOWTimeLabel.text = string;
    
    [formatter setDateStyle:NSDateFormatterLongStyle];
    [formatter setTimeStyle:NSDateFormatterNoStyle];
    string = [formatter stringFromDate:self.donation.dateOfPickup];
    self.dateSpecificLabel.text = string;
    
    self.recipientBusinessName.text = self.donation.recipient.businessName;

    
    /*NSDateFormatter *formatter1 = [[NSDateFormatter alloc] init];
    [formatter1 setDateFormat:@"EEEE"];
    NSString *dayOfWeek = [formatter stringFromDate:donation.dateOfPickup];
    cell.dateAndTimeLabel.text = [NSString stringWithFormat:@"%@", dayOfWeek];
    
    cell.recipientLabel.text = donation.recipient.businessName;
    
    cell.statusBar.backgroundColor = [donation.statusStages objectForKey:donation.status];*/
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
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
    return (section == 0) ? 2 : 1;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
