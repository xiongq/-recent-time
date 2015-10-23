//
//  secondViewController.m
//  抽屉2第三方
//
//  Created by xiong on 15/10/21.
//  Copyright © 2015年 x. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二个人";
    self.view.backgroundColor = [UIColor colorWithRed:255/255.0 green:202/255.0 blue:101/255.0 alpha:1.0];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Right"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(presentRightMenuViewController:)];
    

    [self.view addSubview:({
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(0, 84, self.view.frame.size.width, 44);
        btn.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [btn setTitle:@"push" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pushview:) forControlEvents:UIControlEventTouchUpInside];
        btn;
    })];
}
-(void)pushview:(id)sender{
    UIViewController *view = [UIViewController new];
    view.title = @"push view";
    view.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:view animated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
