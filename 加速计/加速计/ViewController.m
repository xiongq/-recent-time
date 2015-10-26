//
//  ViewController.m
//  加速计
//
//  Created by xiong on 15/10/23.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"
#import <CoreMotion/CoreMotion.h>

@interface ViewController ()
@property (nonatomic, strong) CMMotionManager *mgr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mgr = [CMMotionManager new];
    if (self.mgr.isAccelerometerAvailable) {
        [self.mgr startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMAccelerometerData * _Nullable accelerometerData, NSError * _Nullable error) {
            if (error) return ;
            CMAcceleration acceleration = accelerometerData.acceleration;
            NSLog(@"x=%f/n y = %f/n z=%f",acceleration.x,acceleration.y,acceleration.z);
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
