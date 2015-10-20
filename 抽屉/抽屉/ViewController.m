//
//  ViewController.m
//  抽屉2
//
//  Created by xiong on 15/10/20.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"
#import "test.h"
#import "testtwo.h"


#define MENUwidth self.view.frame.size.width
#define MENUheight self.view.frame.size.height

@interface ViewController ()
@property (nonatomic, strong) UIButton *oneMenu;
@property (nonatomic, strong) UIButton *twoMenu;
@property (nonatomic, strong) test *test;
@property (nonatomic, strong) testtwo  *testtwo;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor redColor];
    UIView *menu = [[UIView alloc] initWithFrame:CGRectMake(0, 0, MENUwidth*0.3, MENUheight)];
    menu.backgroundColor = [UIColor grayColor];
    [self.view addSubview:menu];

    UIButton *btn1 = [UIButton new];
    btn1.backgroundColor = [UIColor redColor];
    btn1.tag = one;
    [btn1 addTarget:self action:@selector(tono1) forControlEvents:UIControlEventTouchUpInside];
    btn1.frame = CGRectMake(0, MENUwidth*0.3, MENUwidth*0.3, 50);
    [menu addSubview:btn1];
    
    
    UIButton *btn2 = [UIButton new];
    btn2.backgroundColor = [UIColor blueColor];
    btn2.tag = two;
    [btn2 addTarget:self action:@selector(tono2) forControlEvents:UIControlEventTouchUpInside];
    btn2.frame = CGRectMake(0, MENUwidth*0.3 + 50, MENUwidth*0.3, 50);
    [menu addSubview:btn2];

    self.test = [test new];
    self.testtwo = [testtwo new];
//    [self.view addSubview:self.testtwo.view];
    
    [self.view addSubview:self.test.view];

 
}
-(void)tono1{
    if (self.test.status == NO) {
        CGRect rect = self.test.view.frame;
        rect.origin.x = rect.size.width *0.3;
        [UIView animateWithDuration:0.3 animations:^{
            self.test.view.frame = rect;
        }];
        self.test.status = YES;
    }else{
        CGRect rect = self.test.view.frame;
        rect.origin.x = 0;
        [UIView animateWithDuration:0.3 animations:^{
            self.test.view.frame = rect;
        }];
        self.test.status = NO;
    }
    [self.view addSubview:self.test.view];
}
-(void)tono2{

    if (self.test.status == NO) {
        CGRect rect = self.testtwo.view.frame;
        rect.origin.x = rect.size.width *0.3;
        [UIView animateWithDuration:0.3 animations:^{
            self.testtwo.view.frame = rect;
        }];
        self.testtwo.status = YES;
    }else{
        CGRect rect = self.testtwo.view.frame;
        rect.origin.x = 0;
        [UIView animateWithDuration:0.3 animations:^{
            self.testtwo.view.frame = rect;
        }];
        self.testtwo.status = NO;
    }

    [self.view addSubview:self.testtwo.view];
}
@end
