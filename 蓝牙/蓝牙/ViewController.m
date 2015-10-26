//
//  ViewController.m
//  蓝牙
//
//  Created by xiong on 15/10/23.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"
#include <GameKit/GameKit.h>

@interface ViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
//选择的图片
@property (weak, nonatomic) IBOutlet UIImageView *CurrImage;
/**
 *  蓝牙连接
 */
- (IBAction)online:(id)sender;
/**
 *  图片选择
 */
- (IBAction)select:(id)sender;
/**
 *  发送
 */
- (IBAction)sender:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)online:(id)sender {
    GKPeerPickerController 
}

- (IBAction)select:(id)sender {
    UIImagePickerController *picker = [UIImagePickerController new];
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum ]) {
        picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        picker.delegate = self;
        [self presentViewController:picker animated:YES completion:nil];
    }
}

- (IBAction)sender:(id)sender {
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    NSLog(@"%@",info);
    self.CurrImage.image = info[@"UIImagePickerControllerOriginalImage"];
    [picker dismissViewControllerAnimated:YES completion:nil];

}
@end
