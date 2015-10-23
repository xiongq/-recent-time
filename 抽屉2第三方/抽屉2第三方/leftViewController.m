//
//  leftViewController.m
//  抽屉2第三方
//
//  Created by xiong on 15/10/21.
//  Copyright © 2015年 x. All rights reserved.
//

#import "leftViewController.h"
#import "firstViewController.h"
#import "secondViewController.h"

@interface leftViewController ()
@property(strong, readwrite, nonatomic)UITableView *tableview;
@end

@implementation leftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview = ({
        UITableView *tableview = [[UITableView alloc] initWithFrame:CGRectMake(0,(self.view.frame.size.height - 54 * 5) / 2.0f, self.view.frame.size.width, 54 * 5 )style:UITableViewStylePlain];
        tableview.delegate = self;
        tableview.dataSource = self;
        tableview.opaque = NO;
        tableview.backgroundColor = [UIColor clearColor];
        tableview.backgroundView =nil;
        tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
        tableview.bounces = NO;
        tableview;
    });
    [self.view addSubview:self.tableview];
}


#pragma mark - delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:  (NSIndexPath *)indexPath{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[firstViewController alloc]init]] animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
         case 1:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[secondViewController alloc]init]] animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        default:
            break;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 54;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellidentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.highlightedTextColor = [UIColor lightGrayColor];
        cell.selectedBackgroundView = [[UIView alloc] init];
    }
    NSArray *titles = @[@"首页", @"日历", @"个人", @"设置", @"退出"];
    NSArray *images = @[@"IconHome", @"IconCalendar", @"IconProfile", @"IconSettings", @"IconEmpty"];
    cell.textLabel.text = titles[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:images[indexPath.row]];
    return cell;

}
@end
