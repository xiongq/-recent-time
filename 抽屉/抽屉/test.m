//
//  test.m
//  抽屉2
//  10.20
//  Created by xiong on 15/10/20.
//  Copyright © 2015年 x. All rights reserved.
//

#import "test.h"

@interface test ()<UITextFieldDelegate>
//@property (nonatomic, assign) BOOL *status;
@end

@implementation test

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UINavigationBar *bar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    [self.view addSubview:bar];
    
    bar.backgroundColor = [UIColor whiteColor];
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"NO1"];
    [bar pushNavigationItem:item animated:YES];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [btn setTitle:@"菜单" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    item.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    [btn addTarget:self action:@selector(menu) forControlEvents:UIControlEventTouchUpInside];
    
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, 320, 40)];
    [self.view addSubview:field];
    field.delegate = self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
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
