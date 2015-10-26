//
//  shareViewController.m
//  二维码
//
//  Created by xiong on 15/10/26.
//  Copyright © 2015年 x. All rights reserved.
//

#import "shareViewController.h"

@interface shareViewController ()
- (IBAction)back:(id)sender;

@end

@implementation shareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
