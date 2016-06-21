//
//  CityModel.m
//  SystemLocation_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "CityModel.h"

@implementation CityModel


+ (instancetype)cityModelWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude{
    CityModel *model = [[CityModel alloc]initWithCity:city longitude:longitude latitude:latitude];
    return model;
}
- (instancetype)initWithCity:(NSString *)city longitude:(double)longitude latitude:(double)latitude{
    if(self = [super init]){
        self.city = city;
        self.longitude = longitude;
        self.latitude = latitude;
    }
    return self;
}
- (NSString *)description{
    return [NSString stringWithFormat:@"cityName:%@,longitude:%f,latitude:%f",self.city,self.longitude,self.latitude];
}


@end
