//
//  ViewController.m
//  UIButtonFrameDemo
//
//  Created by 刘小弟 on 16/10/2.
//  Copyright © 2016年 LSY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init
{
    self=[super init];
    if (self) {

    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)setUI
{
    self.title=@"example";
    self.tableView.separatorStyle  =UITableViewCellSeparatorStyleSingleLine;
    self.tableView.tableFooterView=[UIView new];
    self.tableView.rowHeight =60;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *celldentifier = @"celldentifier";
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:celldentifier];
    if (!cell) {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:celldentifier];
    }
    cell.accessoryType =UITableViewCellAccessoryDisclosureIndicator;
    NSArray *demoStyleArray =@[@"UIButtonFrameStyleDemo",@"UIButtonBeginDistanceDemo",@"UIButtonCenterDistanceDemo"];
    cell.textLabel.text = demoStyleArray[indexPath.row];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSArray *vcArray = @[@"UIButtonFrameStyleDemoViewController",@"UIBeginDistanceViewController",@"UICenterDistanceViewController"];
    
    UIViewController *vc =[NSClassFromString(vcArray[indexPath.row]) new];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
