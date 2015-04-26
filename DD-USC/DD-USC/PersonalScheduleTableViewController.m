//
//  PersonalScheduleTableViewController.m
//  DD-USC
//
//  Created by Casey Cole on 12/5/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "PersonalScheduleTableViewController.h"
#import "DetailViewController.h"
#import "MasterViewController.h"
#import "AbstractsDB.h"
#import "Abstracts.h"
#import "Favorites.h"

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
    
    self.abstractsInfos = [AbstractsDB database].abstractsInfos;
    
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

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"TheIdentifier"])
    {
        NSIndexPath *indexPath = nil;
        Abstracts *abstract = nil;
        Favorites *favs= [Favorites FavoritesList];
        
        indexPath = [self.tableView indexPathForSelectedRow];
        NSUInteger ns = [[favs.ids objectAtIndex:indexPath.row] unsignedLongValue];
        
        abstract = [self.abstractsInfos objectAtIndex:ns];
       
        DetailViewController *controller = segue.destinationViewController;
        controller.abstract = abstract;
        
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Favorites *favs= [Favorites FavoritesList];
    return [favs.favList count];
}

//[favs.favList setObject:[NSString stringWithFormat:@"%@ %@ -- %@ -- %@", self.abstract.sFName1, self.abstract.sLName1, self.abstract.FinalTime, self.abstract.Room] forKey:@(favs.favList.count-1)];
//[favs.favList setObject:[NSNumber numberWithInt:self.abstract.uniqueId] forKey:@(favs.favList.count/10)];

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    Favorites *favs= [Favorites FavoritesList];
    
    //tableView.backgroundColor = [UIColor colorWithRed:0.55 green:0.11 blue:0.086 alpha:1.0];
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    NSString *info = nil;
    //Abstracts *info = nil;
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    
    
    
    
    info = [favs.favList objectAtIndex:indexPath.row];
    
    
    [cell setBackgroundView:nil];
    cell.backgroundColor = [UIColor colorWithRed:0.55 green:0.11 blue:0.086 alpha:1.0];
    //108/255 22/255 17/255
    
    UIView *selectedView = [[UIView alloc] initWithFrame:cell.frame];
    selectedView.backgroundColor = [UIColor colorWithRed:108.0/255.0 green:22.0/255.0 blue:0.086 alpha:1.0];
    cell.selectedBackgroundView = selectedView;
    
    cell.textLabel.text = info;
    cell.textLabel.textColor = [UIColor whiteColor];
    
    //cell.textLabel.text = info.title;
    //cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", info.sFName1, info.sLName1];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"TheIdentifier" sender:nil];
    
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        Favorites *favs= [Favorites FavoritesList];
        [favs.favList removeObjectAtIndex:indexPath.row];
        [favs.ids removeObjectAtIndex:indexPath.row];
        
        //NSUserDefaults *def2 = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
        [def setObject:favs.favList forKey:@"Favorites"];
        [def setObject:favs.ids forKey:@"ids"];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } //else if (editingStyle == UITableViewCellEditingStyleInsert)
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
}


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
