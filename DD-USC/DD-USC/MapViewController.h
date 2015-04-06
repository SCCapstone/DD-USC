//
//  MapViewController.h
//  DD-USC
//
//  Created by Dunlapmw1988 on 11/13/14.
//  Copyright (c) 2014 Casey Cole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UILabel *addressLabel;
@property (strong, nonatomic) IBOutlet UIButton *GetDirections;
- (IBAction)Go:(id)sender;


@end
