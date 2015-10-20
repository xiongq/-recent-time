//
//  testtwo.m
//  抽屉2
//
//  Created by xiong on 15/10/20.
//  Copyright © 2015年 x. All rights reserved.
//

#import "testtwo.h"

@interface testtwo ()

@end

@implementation testtwo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    UINavigationBar *bar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    [self.view addSubview:bar];
    
    bar.backgroundColor = [UIColor blueColor];
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"NO2"];
    [bar pushNavigationItem:item animated:YES];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [btn setTitle:@"菜单" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    item.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    [btn addTarget:self action:@selector(menu) forControlEvents:UIControlEventTouchUpInside];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.status == YES) {
        CGRect rect = self.view.frame;
        rect.origin.x = 0;
        [UIView animateWithDuration:0.3 animations:^{
            self.view.frame = rect;
        }];
        self.status = NO;
    }
    
}
-(void)menu{
    if (self.status == NO) {
        CGRect rect = self.view.frame;
        rect.origin.x = rect.size.width *0.3;
        [UIView animateWithDuration:0.3 animations:^{
            self.view.frame = rect;
        }];
        self.status = YES;
    }else{
        CGRect rect = self.view.frame;
        rect.origin.x = 0;
        [UIView animateWithDuration:0.3 animations:^{
            self.view.frame = rect;
        }];
        self.status = NO;
        
    }
    
}


@end
