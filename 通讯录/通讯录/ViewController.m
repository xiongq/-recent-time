//
//  ViewController.m
//  通讯录
//
//  Created by xiong on 15/10/26.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"
#import <AddressBook/AddressBook.h>
//#import <Contacts/Contacts.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized) {
        return;
    }
    
    ABAddressBookRef book = ABAddressBookCreateWithOptions(nil, nil);
    ABAddressBookRequestAccessWithCompletion(book, ^(bool granted, CFErrorRef error) {
        if (granted) {
            NSLog(@"请求成功");
        }else{
            NSLog(@"请求失败");
        }
    });
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ABAddressBookRef book = ABAddressBookCreateWithOptions(NULL, NULL);
    CFArrayRef allpeople = ABAddressBookCopyArrayOfAllPeople(book);

   CFIndex count =  CFArrayGetCount(allpeople);
    for (int i = 0 ; i < count; i++) {
        ABRecordRef people = CFArrayGetValueAtIndex(allpeople, i);
        CFStringRef firstName = ABRecordCopyValue(people, kABPersonFirstNameProperty);
        CFStringRef lastname = ABRecordCopyValue(people, kABPersonLastNameProperty);
        NSLog(@"%@%@",lastname,firstName);
    }
}

@end
