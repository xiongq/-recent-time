//
//  XQTableViewController.m
//  fuckGFW
//
//  Created by xiong on 15/10/25.
//  Copyright © 2015年 x. All rights reserved.
//

#import "XQTableViewController.h"
#import "XQaccent.h"
#import "XQaccentTools.h"
#import "XQfacebookViewController.h"
#import "XQgmailViewController.h"
#import "XQtwitterViewController.h"
#import <SafariServices/SafariServices.h>



@interface XQTableViewController ()<SFSafariViewControllerDelegate>

@end

@implementation XQTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"选择";
    XQaccent *accent2 = [XQaccentTools accent];
    NSString *email = accent2.email;
    NSString *password = accent2.password;
    
//    NSLog(@"email%@ \npassword%@",email,password);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"three" forIndexPath:indexPath];
    NSArray *array = [[NSArray alloc] initWithObjects:@"facebook", @"gmail",@"twitter",nil];
   
    cell.textLabel.text = array[indexPath.row];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    [self controllerWithStoryBoardrows:indexPath.row];
   
}
-(void)controllerWithStoryBoardrows:(NSInteger)rows{
    NSString *urlstring;
    switch (rows) {
        case 0:
            urlstring = @"https://m.facebook.com";
            
            break;
            
        case 1:
          urlstring = @"https://mail.google.com";
            break;
            
        case 2:
            urlstring = @"https://m.twitter.com";
            break;

    }
    
//    UIStoryboard *test = [UIStoryboard storyboardWithName:name bundle:nil];
//    UIViewController *vc = [test instantiateInitialViewController];
//    [self presentViewController:vc animated:YES completion:nil];
    NSURL *url = [NSURL URLWithString:urlstring];
    SFSafariViewController *sf = [[SFSafariViewController alloc] initWithURL:url];
    [self presentViewController:sf animated:YES completion:nil];
    sf.delegate =self;
    
    

}
-(void)load{
    NSURL *url = [NSURL URLWithString:@"https://m.twitter.com"];
    SFSafariViewController *sf = [[SFSafariViewController alloc] initWithURL:url];
    [self presentViewController:sf animated:YES completion:nil];
    sf.delegate =self;

}

@end
