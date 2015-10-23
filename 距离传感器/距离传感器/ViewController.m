//
//  ViewController.m
//  距离传感器
//
//  Created by xiong on 15/10/23.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIDevice currentDevice].proximityMonitoringEnabled = YES;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ProximityStateDidChange:) name:UIDeviceProximityStateDidChangeNotification object:nil];
}
-(void)ProximityStateDidChange:(NSNotification *)note{
    //传感器状态
    
    NSLog(@"%hhd",[UIDevice currentDevice].proximityState);
    
}
-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
