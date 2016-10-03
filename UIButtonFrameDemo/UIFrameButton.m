//
//  UIFrameButton.m
//  UIButtonFrameDemo
//
//  Created by 刘小弟 on 16/10/2.
//  Copyright © 2016年 LSY. All rights reserved.
//

#import "UIFrameButton.h"

@implementation UIFrameButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.subviews methodSignatureForSelector:@selector(sizeToFit)];

    switch (_frameStyle) {
        case LeftImageWithRightTitleFrameStyle:
            [self setUILefSubVIew:self.imageView withRight:self.titleLabel];
            break;
        case LeftTitleWithRightImageFrameStyle:
            [self setUILefSubVIew:self.titleLabel withRight:self.imageView];
            break;
        case TopImageWithbuttomTitleFrameStyle:
            [self setUITopSubVIew:self.imageView withButotm:self.titleLabel];
            break;
        case TopTitleWithbuttomImageFrameStyle:
            [self setUITopSubVIew:self.titleLabel withButotm:self.imageView];
            break;
        default:
            break;
    }
    
}

- (void)setUILefSubVIew:(UIView *)leftSubVIew withRight:(UIView *)rightSubView
{
    CGRect leftSubVIewFrame  = leftSubVIew.frame;
    CGRect rightSubViewFrame = rightSubView.frame;
    float  centerDistance = _centerDistance==0? 8:_centerDistance;

    CGFloat totalSubsWidth = CGRectGetWidth(leftSubVIewFrame) + centerDistance + CGRectGetWidth(rightSubViewFrame);

    
//当beginDistance =0的时候，image和title 居中，  如果beginDistance不为零 ,就把beginDistance的设置成左视图的 x；
    leftSubVIewFrame.origin.x = _beginDistance==0? (CGRectGetWidth(self.frame) - totalSubsWidth) / 2.0:_beginDistance;
    leftSubVIewFrame.origin.y = (CGRectGetHeight(self.frame) - CGRectGetHeight(leftSubVIewFrame)) / 2.0;
    leftSubVIew.frame = leftSubVIewFrame;
    
    rightSubViewFrame.origin.x = CGRectGetMaxX(leftSubVIewFrame) + centerDistance;
    rightSubViewFrame.origin.y = (CGRectGetHeight(self.frame) - CGRectGetHeight(rightSubViewFrame)) / 2.0;
    rightSubView.frame = rightSubViewFrame;


}

- (void)setUITopSubVIew:(UIView *)topSubVIew withButotm:(UIView *)buttomSubView
{
    
    CGRect topSubVIewFrame = topSubVIew.frame;
    CGRect buttomSubViewFrame = buttomSubView.frame;
    float  centerDistance  = _centerDistance==0? 8:_centerDistance;
    float  totalsubsHeight = CGRectGetHeight(topSubVIewFrame) + CGRectGetHeight(buttomSubViewFrame) +centerDistance;
    
    topSubVIewFrame.origin.y = _beginDistance==0? (CGRectGetHeight(self.frame)-totalsubsHeight)/2.0:_beginDistance;
    topSubVIewFrame.origin.x = (CGRectGetWidth(self.frame) - CGRectGetWidth(topSubVIewFrame))/2.0;
    topSubVIew.frame = topSubVIewFrame;
    
    buttomSubViewFrame.origin.y = CGRectGetMaxY(topSubVIewFrame) + centerDistance ;
    buttomSubViewFrame.origin.x = (CGRectGetWidth(self.frame) - CGRectGetWidth(buttomSubViewFrame))/2.0;
    buttomSubView.frame =buttomSubViewFrame;
    
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
    [super setImage:image forState:state];
    [self setNeedsLayout];
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    self.titleLabel.numberOfLines =0;
    [super setTitle:title forState:state];
    
    [self setNeedsLayout];
}

- (void)setFrameStyle:(UIButtonFrameSttyle)frameStyle
{
    _frameStyle =frameStyle;
    [self setNeedsLayout];
}

- (void)setBeginDistance:(CGFloat)beginDistance
{
    _beginDistance = beginDistance;
    [self setNeedsLayout];
}
- (void)setCenterDistance:(CGFloat)centerDistance
{
    _centerDistance = centerDistance;
    [self setNeedsLayout];

}
@end
