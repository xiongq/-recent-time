//
//  ViewController.m
//  fuckGFW
//
//  Created by xiong on 15/10/25.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"
#import "XQaccent.h"
#import "XQaccentTools.h"

@interface ViewController ()
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.email resignFirstResponder];
    [self.password resignFirstResponder];

}
- (IBAction)save:(id)sender {
//    NSLog(@"email%@ \npassword%@",self.email.text,self.password.text);
    XQaccent *accent = [XQaccent new];
    accent.email = self.email.text;
    accent.password = self.password.text;
    [XQaccentTools SaveAccent:accent];

    
}
@end
