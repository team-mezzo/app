//
//  ChooseOrgTableViewController.m
//  MezzoProt1
//
//  Created by Heejung Chung on 7/2/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "ChooseOrgTableViewController.h"

@interface ChooseOrgTableViewController ()

@property (strong, nonatomic) NSMutableArray *orgContacts; //list of user's org contacts


@end

@implementation ChooseOrgTableViewController

#pragma mark - Properties

- (NSMutableArray *)orgContacts
{
    if (!_orgContacts) { _orgContacts = [MezzoPrototypeData listOfPrototypeOrgs]; }
    return _orgContacts;
}

- (Stakeholder *)org
{
    if (!_org) { _org = [[Stakeholder alloc] init]; }
    return _org;
}

#pragma mark - VC lifecycle

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
    
    self.navigationItem.hidesBackButton = YES;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.orgContacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OrgChoice" forIndexPath:indexPath];
    
    Stakeholder *org = [self.orgContacts objectAtIndex:indexPath.row];
    cell.textLabel.text = org.businessName;
    
    cell.detailTextLabel.text = org.managerName;
    //cell.detailTextLabel.text = @"";
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"orgChosen"])
    {
        NewDonationTableViewController *VC = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        self.org = [self.orgContacts objectAtIndex:indexPath.row];
        
        VC.donation.recipient = self.org;
    }
}


@end
