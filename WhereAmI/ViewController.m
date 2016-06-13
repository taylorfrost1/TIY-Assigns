//
//  ViewController.m
//  WhereAmI
//
//  Created by Taylor Frost on 6/8/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

//1. Import Mapkit + CoreLocation Frameworks
@import MapKit;
@import CoreLocation;

#import "ViewController.h"


@interface ViewController ()<MKMapViewDelegate, CLLocationManagerDelegate>

//2. Outlet to mapView
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

//3. Creat an instance of the CLLocationManager

@property (strong, nonatomic) CLLocationManager *locationManager;

@property(nonatomic, readonly) MKUserLocation *userLocation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startUpdatingLocation];
    
    
}
// Initalized the LocationManager and requests authorization

-(void)startUpdatingLocation{

    //4. Initailize  the location manager
    
    self.locationManager = [[CLLocationManager alloc] init];
    
    //5. IMPORTANT set the delegate to the view controller
    
    self.locationManager.delegate = self;
    
    //6. Set the accuracy of the location manager
    
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
//    [self.locationManager startUpdatingLocation];
    
//    [self.locationManager startMonitoringSignificantLocationChanges];
    
    [self.locationManager requestWhenInUseAuthorization];
    
}

#pragma mark - Delegate Mathods

-(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    
    NSLog(@"Authorization changed");
    
    if (status != kCLAuthorizationStatusDenied){
        [self.locationManager requestLocation];
    }
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    NSLog(@"Did fail");
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    NSLog(@"didUpdate");
    
    CLLocation *location = [locations firstObject];
    
    CLLocationCoordinate2D coord = location.coordinate;
    
    NSLog(@"latitue == %2.2f, longitude == %2.2f", coord.latitude, coord.longitude);
    
    [self centerWithMapWithCoordinate:coord];
}

#pragma mark - Helper Methods

-(void)centerWithMapWithCoordinate:(CLLocationCoordinate2D)center {
    // REGION CODE TO CENTER ON MAP
    MKCoordinateRegion region = MKCoordinateRegionMake (center, MKCoordinateSpanMake(0.01, 0.01));
    
    [self.mapView setRegion:region animated:YES];
    [self.mapView setShowsUserLocation:YES];
    
}
- (IBAction)currentLocationButtonTapped:(UIBarButtonItem *)sender {
    
    [self.locationManager requestLocation];
    
    NSLog(@"Hello this is working");
    
}
- (IBAction)sataliteModeButtonTapped:(UIBarButtonItem *)sender {
    
    [_mapView setMapType:MKMapTypeSatellite];
    
}
- (IBAction)mapModeButtonTapped:(UIBarButtonItem *)sender {
    
    [_mapView setMapType:MKMapTypeStandard];
}

- (IBAction)getLocationButtonTapped:(UIButton *)sender {
    
    NSLog(@"getLocationButtonTappedWorks");
    

    
}



@end
