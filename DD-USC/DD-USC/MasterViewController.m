//
//  MasterViewController.m
//  Abstracts_take3
//
//  Created by Casey Cole on 11/12/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Abstracts.h"
#import "AbstractsDB.h"


@interface MasterViewController ()

@end

@implementation MasterViewController

@synthesize abstractsInfos;
@synthesize searchResults;


- (void)awakeFromNib
{
    [super awakeFromNib];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.abstractsInfos = [AbstractsDB database].abstractsInfos;
    self.title = @"Abstracts";
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row%2 != 0) {
        UIColor *altCellColor = [UIColor colorWithWhite:0.7 alpha:0.1];
        cell.backgroundColor = altCellColor;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetails"])
    {
        NSIndexPath *indexPath = nil;
        Abstracts *abstract = nil;
        
        if (self.searchDisplayController.active)
        {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            abstract = [self.searchResults objectAtIndex:self.searchDisplayController.searchResultsTableView.indexPathForSelectedRow.row];
        }
        else
        {
            indexPath = [self.tableView indexPathForSelectedRow];
            abstract = [self.abstractsInfos objectAtIndex:indexPath.row];
        }
        
        DetailViewController *controller = segue.destinationViewController;
        controller.abstract = abstract;
        
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        return [searchResults count];
        
    } else {
        return [self.abstractsInfos count];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    Abstracts *info = nil;
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        info = [self.searchResults objectAtIndex:indexPath.row];
    }
    else
    {
        info = [self.abstractsInfos objectAtIndex:indexPath.row];
    }

    //Abstracts *info = [self.abstractsInfos objectAtIndex:indexPath.row];
    cell.textLabel.text = info.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", info.sFName1, info.sLName1];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 71;
}

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"title contains[c] %@", searchText];
    searchResults = [abstractsInfos filteredArrayUsingPredicate:resultPredicate];
    
    NSArray *tempArray = [searchResults filteredArrayUsingPredicate:resultPredicate];
    if (![scope isEqualToString:@"All"])
    {
        // Further filter the array with the scope
        NSPredicate *scopePredicate = [NSPredicate predicateWithFormat:@"FinalTime contains[c] %@",scope];
        tempArray = [tempArray filteredArrayUsingPredicate:scopePredicate];
    }
    
    searchResults = [NSMutableArray arrayWithArray:tempArray];
    
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

@end
