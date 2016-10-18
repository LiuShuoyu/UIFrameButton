//
//  UIFrameButton.h
//  UIButtonFrameDemo
//
//  Created by 刘小弟 on 16/10/2.
//  Copyright © 2016年 LSY. All rights reserved.
//
#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, UIButtonFrameSttyle)
{
    
   LeftImageWithRightTitleFrameStyle=0, //左边title 右边image
   LeftTitleWithRightImageFrameStyle,   //左边image 右边title
   TopImageWithbuttomTitleFrameStyle,   //上image 下title
    TopTitleWithbuttomImageFrameStyle,  //上title 下image

};


@interface UIFrameButton : UIButton
//image   和title 的位置样式
@property(assign,nonatomic) UIButtonFrameSttyle frameStyle;

//image   和title 间隔  。当centerDistance =0的时候， 为ios推荐的8px 距离
@property(assign,nonatomic) CGFloat centerDistance;

//当beginDistance =0的时候，image和title 居中，  如果beginDistance不为零 ，根据frameStyle的样式， 从left或或者top的，开始其实距离
@property(assign,nonatomic) CGFloat beginDistance;

@end
