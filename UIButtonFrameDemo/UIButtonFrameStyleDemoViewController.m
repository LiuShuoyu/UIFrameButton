//
//  UIButtonFrameStyleDemoViewController.m
//  UIButtonFrameDemo
//
//  Created by 刘小弟 on 16/10/3.
//  Copyright © 2016年 LSY. All rights reserved.
//

#import "UIButtonFrameStyleDemoViewController.h"
#import "UIFrameButton.h"

@interface UIButtonFrameStyleDemoViewController ()

@end

@implementation UIButtonFrameStyleDemoViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"FrameStyleExample";
    
    self.view.backgroundColor =[UIColor whiteColor];
    NSArray *styleTitleleArray = @[@"LeftImage\nRightTitle",@"LeftTitle\nRightImage",@"TopImage\nbuttomTitle",@"TopTitle\nbuttomImage"];
    NSArray *styleArray = @[@(LeftImageWithRightTitleFrameStyle),@(LeftTitleWithRightImageFrameStyle),@(TopImageWithbuttomTitleFrameStyle),@(TopTitleWithbuttomImageFrameStyle)];

    for (NSInteger i=0; i<styleArray.count; i++)
    {
        NSInteger row = i%2;
        NSInteger column = i/2;
        
        float width =(CGRectGetWidth(self.view.frame)-20*3)/2;
        float height =width;
        
        UIFrameButton *btn=[[UIFrameButton  alloc] initWithFrame:CGRectMake(20+(width +20)*row, 20+(height +20)*column +64, width, height)];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
        [btn setTitle:styleTitleleArray[i] forState:UIControlStateNormal];
        btn.frameStyle =[styleArray[i] integerValue];
        btn.layer.borderColor = [UIColor grayColor].CGColor;
        btn.layer.cornerRadius = 5;
        btn.layer.borderWidth =1;
        btn.layer.masksToBounds =YES;
        [self.view addSubview:btn];
    }
    
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
