//
//  PersonalScheduleTableViewController.m
//  DD-USC
//
//  Created by Casey Cole on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "PersonalScheduleTableViewController.h"
#import "AbstractsDB.h"
#import "Abstracts.h"
#import "MasterViewController.h" 

@interface PersonalScheduleTableViewController ()

@end

@implementation PersonalScheduleTableViewController

static PersonalScheduleTableViewController *_perSchedule;

+ (PersonalScheduleTableViewController*)perSchedule
{
    if (_perSchedule == nil) {
        _perSchedule = [[PersonalScheduleTableViewController alloc] init];
    }
    return _perSchedule;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.favorites = [AbstractsDB database].abstractsInfos;
    self.title = @"Favorites";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.favorites count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    NSString *info = nil;
    //Abstracts *info = nil;
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    info = [self.favorites objectAtIndex:indexPath.row];
    cell.textLabel.text = info;
    //cell.textLabel.text = info.title;
    //cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", info.sFName1, info.sLName1];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
