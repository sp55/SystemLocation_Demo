//
//  LocationManager.h
//  SystemLocation_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CityModel.h"



@class LocationManager,CityModel,CLPlacemark,CLLocation;
@protocol LocationManagerDelegate;


@interface LocationManager : NSObject


@property (nonatomic, weak) id<LocationManagerDelegate> delegate;
+ (LocationManager *)locationManager;
- (void)startLocate;
- (void)stopLocate;
- (CLPlacemark *)currentPlaceMark;
@end




@protocol LocationManagerDelegate <NSObject>
- (void)locationManagerDidLocated:(CityModel *)cityModel location:(CLLocation *)location success:(BOOL)success;


@end
