//
//  CityModel.h
//  SystemLocation_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CityModel : NSObject

/**城市名称*/
@property (nonatomic,copy) NSString *city;
/**经度*/
@property (nonatomic,assign) double longitude;
/**纬度*/
@property (nonatomic,assign) double latitude;
- (instancetype)initWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude;
+ (instancetype)cityModelWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude;


@end
