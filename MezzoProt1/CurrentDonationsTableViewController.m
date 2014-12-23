//
//  CurrentDonationsTableViewController.m
//  MezzoProt1
//
//  Created by Heejung Chung on 7/2/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "CurrentDonationsTableViewController.h"

@interface CurrentDonationsTableViewController ()

@end

@implementation CurrentDonationsTableViewController

#pragma mark - VC lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.hidesBackButton = YES;
    
    DonationDownloader *loader = [[DonationDownloader alloc] init];
    [loader downloadFromURLString:@"INSERT URL"];
    [self.currentDonations addObject:loader.donation];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

#pragma mark - Properties

- (NSMutableArray *)currentDonations
{
    if (!_currentDonations) {
        _currentDonations = [[NSMutableArray alloc] init];
    }
    return _currentDonations;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) { return 50;}
    return 91;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1; // maybe change to have one per day/week
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.currentDonations count] + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"addDonationButton" forIndexPath:indexPath];
        return cell;
    }
    
    MezzoCurrentDonationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"donationSummary" forIndexPath:indexPath];
    Donation *donation = self.currentDonations[indexPath.row - 1];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE"];
    NSString *dayOfWeek = [formatter stringFromDate:donation.dateOfPickup];
    cell.dateAndTimeLabel.text = [NSString stringWithFormat:@"%@", dayOfWeek];
    
    cell.recipientLabel.text = donation.recipient.businessName;
    
    cell.statusBar.backgroundColor = [donation.statusStages objectForKey:donation.status];
    
    return cell;
}

- (void)addDonation:(Donation *)donation
{
    NSUInteger insPoint = [self.currentDonations indexOfObject:donation
                                                 inSortedRange:NSMakeRange(0, [self.currentDonations count])
                                                       options:NSBinarySearchingInsertionIndex
                                               usingComparator:
        
        ^NSComparisonResult(id obj1, id obj2) {
            NSDate *date1 = ((Donation *)obj1).dateOfPickup;
            NSDate *date2 = ((Donation *)obj2).dateOfPickup;
            
            return [date1 compare:date2];
            
        }];
    
    [self.currentDonations insertObject:donation atIndex:insPoint];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"View Donation Details"]) {
        if ([segue.destinationViewController isKindOfClass:[DonationDetailsTableViewController class]])
        {
            NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
            DonationDetailsTableViewController *VC = (DonationDetailsTableViewController *)segue.destinationViewController;
            
            Donation *donation = [self.currentDonations objectAtIndex:indexPath.row - 1];
            VC.donation = donation;
        }
    }
}

- (IBAction)newDonationSaved:(UIStoryboardSegue *)segue
{
    
}

@end











