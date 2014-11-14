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

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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


@end
