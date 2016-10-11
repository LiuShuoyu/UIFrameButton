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

@property (nonatomic,strong)UIFrameButton *btn;
@end

@implementation UIBeginDistanceViewController

- (void)viewDidLoad
{
    [self.view addSubview:self.btn];
    self.view.backgroundColor =[UIColor whiteColor];
    
}

- (UIFrameButton *)btn
{
    if (!_btn)
    {
        _btn=[[UIFrameButton  alloc] initWithFrame:CGRectMake(10, 10, 300, 300)];
        [_btn addTarget:self action:@selector(clikBtn:) forControlEvents:UIControlEventTouchUpInside];
        _btn.center =self.view.center;
        [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_btn setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
        [_btn setImage:[UIImage imageNamed:@"play"] forState:UIControlStateHighlighted];

        [_btn setTitle:@"点击我,我开始移动" forState:UIControlStateNormal];
        _btn.frameStyle =LeftImageWithRightTitleFrameStyle;
        _btn.beginDistance =1;
        _btn.layer.borderColor = [UIColor grayColor].CGColor;
        _btn.layer.cornerRadius = 5;
        _btn.layer.borderWidth =1;
        _btn.layer.masksToBounds =YES;
    }
    
    return _btn;
}


- (void)clikBtn:(UIFrameButton *)btn
{
    NSLog(@" old beginDistance =%f",btn.beginDistance );
    btn.beginDistance = btn.beginDistance>40?1:btn.beginDistance+2;
    NSLog(@" new centerDistance =%f",btn.beginDistance );
    
}
@end