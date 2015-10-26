//
//  ViewController.m
//  二维码
//
//  Created by xiong on 15/10/26.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"
#import <CoreImage/CoreImage.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *field;
@property (weak, nonatomic) IBOutlet UIImageView *image;
- (IBAction)add:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *del;
@property (weak, nonatomic) IBOutlet UIButton *add;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.del.hidden = YES;
    self.add.enabled = NO;
    [self.del addTarget:self action:@selector(delText) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(beginEdit:) name:UITextFieldTextDidBeginEditingNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endEdit:) name:UITextFieldTextDidEndEditingNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardframe:) name:UIKeyboardDidShowNotification object:nil];

    
    
    
}
-(void)keyboardframe:(NSNotification *)note{
    

}
-(void)delText{
    self.field.text = nil;
    self.del.hidden = YES;
    self.add.enabled = NO;

}
-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
-(void)beginEdit:(NSNotification *)note{
    self.del.hidden = NO;
//    self.add.enabled = YES;
    NSDictionary *dic = note.userInfo;
    CGRect rect = [dic[@"frame"] CGRectValue];
//    NSLog(@"%@",NSStringFromCGRect(rect));
//    NSLog(@"field---%@",NSStringFromCGRect(self.field.frame));
}

-(void)endEdit:(NSNotification *)note{
    NSLog(@"---%@",note.userInfo);
    if (self.field.text.length == 0) {
        self.del.hidden = YES;
        self.add.enabled = NO;        
    }else{
        self.del.hidden = NO;
        
        self.add.enabled = YES;
    }
}

- (IBAction)add:(id)sender {
    [self.field resignFirstResponder];
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [filter setDefaults];
    if (self.field.text == nil) {
        return;
    }
    NSData *data = [self.field.text dataUsingEncoding:NSUTF8StringEncoding];
    [filter setValue:data forKey:@"inputMessage"];
    CIImage *image = [filter outputImage];
    self.image.image = [UIImage imageWithCIImage:image];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.field resignFirstResponder];
}
@end
