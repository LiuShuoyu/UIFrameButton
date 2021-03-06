//
//  UIBeginDistanceViewController.m
//  UIButtonFrameDemo
//
//  Created by 刘小弟 on 16/10/3.
//  Copyright © 2016年 LSY. All rights reserved.
//

#import "UIBeginDistanceViewController.h"
#import "UIFrameButton.h"

@interface UIBeginDistanceViewController ()

@end

@implementation UIBeginDistanceViewController

- (void)viewDidLoad
{
    UIFrameButton *btn =({
        
        UIFrameButton *newBtn=[[UIFrameButton  alloc] initWithFrame:CGRectMake(10, 10, 300, 300)];
        [newBtn addTarget:self action:@selector(clikBtn:) forControlEvents:UIControlEventTouchUpInside];
        newBtn.center =self.view.center;
        [newBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [newBtn setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
        [newBtn setImage:[UIImage imageNamed:@"play"] forState:UIControlStateHighlighted];
        
        [newBtn setTitle:@"点击我,我开始移动" forState:UIControlStateNormal];
        newBtn.frameStyle =LeftImageWithRightTitleFrameStyle;
        newBtn.beginDistance =1;
        newBtn.layer.borderColor = [UIColor grayColor].CGColor;
        newBtn.layer.cornerRadius = 5;
        newBtn.layer.borderWidth =1;
        newBtn.layer.masksToBounds =YES;
        newBtn;
    });
    
    [self.view addSubview:btn];
    self.view.backgroundColor =[UIColor whiteColor];    
    
}



- (void)clikBtn:(UIFrameButton *)btn
{
    NSLog(@" old beginDistance =%f",btn.beginDistance );
    btn.beginDistance = btn.beginDistance>40?1:btn.beginDistance+2;
    NSLog(@" new centerDistance =%f",btn.beginDistance );
    
}
@end
