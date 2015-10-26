//
//  XQtwitterViewController.m
//  fuckGFW
//
//  Created by xiong on 15/10/25.
//  Copyright © 2015年 x. All rights reserved.
//

#import "XQtwitterViewController.h"

@interface XQtwitterViewController ()

@end

@implementation XQtwitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(0, 0, 44, 44);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"back" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}
-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
