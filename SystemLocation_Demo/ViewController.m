//
//  ViewController.m
//  SystemLocation_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/489b348ee1a5
//封装CLLocationManager, 更简单的使用

#import "ViewController.h"

#import "LocationManager.h"
#import "CityModel.h"

@interface ViewController ()<LocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (nonatomic, strong) LocationManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [LocationManager locationManager];
    self.manager.delegate = self;

    

}
- (IBAction)startAction:(UIButton *)sender {
    [self.manager startLocate];

}
- (IBAction)stopAction:(UIButton *)sender {
    [self.manager stopLocate];

}

#pragma mark - ALNLocationManagerDelegate
- (void)locationManagerDidLocated:(CityModel *)cityModel location:(CLLocation *)location success:(BOOL)success{
    self.cityTextField.text = cityModel.city;
}

@end
