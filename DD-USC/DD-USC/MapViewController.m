//
//  MapViewController.m
//  DD-USC
//
//  Created by Dunlapmw1988 on 11/13/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import "MapViewController.h"
#import "RHLocationDataController.h"
#import "RHLocation.h"

/*!
 @brief MapViewController
        the class implements a few formats for the two buttons and the image is actually a mapviewcontroller linked to apple maps that zooms in on a location whose data is stored in "RHLocationDataController.m".
 */
@interface MapViewController ()

@end

@implementation MapViewController
@synthesize GetDirections;


- (void)viewDidLoad {
    [super viewDidLoad];
    GetDirections.layer.cornerRadius = 3;
    GetDirections.layer.borderWidth = 1;
    GetDirections.layer.borderColor = [[UIColor grayColor]CGColor];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*!
 @brief viewDidAppear this was created via combining a few tutorials on the mapview subject.  It pulls up a real sattelite image of Russel house then puts a pin at the coordinates in the "RHLocationDataController.m". However it is limited as it does not give directions only a overhead image with a pin in it. It also assigns the address from the same class above in the label below the image. 
 */
- (void)viewDidAppear:(BOOL)animated
{
   
    RHLocationDataController *model = [[RHLocationDataController alloc] init];
    RHLocation *place = [model getRusselHouseLoc];
    
    CLLocationCoordinate2D placeCoords;
    placeCoords.latitude = place.latitude;
    placeCoords.longitude = place.longitude;
    
    self.addressLabel.text = place.address;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(placeCoords, 250, 250);
    MKPlacemark *russellHouse = [[MKPlacemark alloc] initWithCoordinate:placeCoords addressDictionary:nil];
    MKMapItem *item = [[MKMapItem alloc] initWithPlacemark:russellHouse];
    item.name = place.building;
    
    MKPointAnnotation *pointAnnotationA = [[MKPointAnnotation alloc] init];
    pointAnnotationA.coordinate = placeCoords;
    pointAnnotationA.title = place.building;
    
    [self.mapView setRegion:viewRegion animated:YES];
    [self.mapView addAnnotation:pointAnnotationA];
    
    
}


/*!
 @Go this is the get directions buttons action code.  It takes all the address from RHLocationDataController.m and passes it to a AppleMaps URL page. This one allows the user to get the directions as the name of the actual button suggests.
 */
- (IBAction)Go:(id)sender {
    RHLocationDataController *model = [[RHLocationDataController alloc] init];
    RHLocation *place = [model getRusselHouseLoc];
    NSString *theAddress = place.urlString;
    
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:theAddress]];
}
@end
