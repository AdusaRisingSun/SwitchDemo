//
//  ColorControl.m
//  SwitchDemo
//
//  Created by Adusa on 15/9/1.
//  Copyright (c) 2015年 Adusa. All rights reserved.
//

#import "ColorControl.h"

@implementation ColorControl
-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor grayColor];
    }
    return self;
}

-(void)updateColorFromTouch:(UITouch *)touch
{
    CGPoint touchPoint=[touch locationInView:self];
    float hue=touchPoint.x/self.frame.size.width;
    float saturation=touchPoint.y/self.frame.size.height;
    
    self.value=[UIColor colorWithHue:hue saturation:saturation brightness:1.0f alpha:1.0f];
    self.backgroundColor=self.value;
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

-(BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint touchPoint=[touch locationInView:self];
    if (CGRectContainsPoint(self.bounds, touchPoint)) {
        [self updateColorFromTouch:touch];
        [self sendActionsForControlEvents:UIControlEventTouchDragInside];
    }
    else
    {
        [self sendActionsForControlEvents:UIControlEventTouchDragOutside];
    }
    return YES;
}

-(void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint touchPoint=[touch locationInView:self];
    if (CGRectContainsPoint(self.bounds, touchPoint)) {
        [self updateColorFromTouch:touch];
        [self sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
    else
    {
        [self sendActionsForControlEvents:UIControlEventTouchUpOutside];
    }
}

-(void)cancelTrackingWithEvent:(UIEvent *)event
{
    [self sendActionsForControlEvents:UIControlEventTouchCancel];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
