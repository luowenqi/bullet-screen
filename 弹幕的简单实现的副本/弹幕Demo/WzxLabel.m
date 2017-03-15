//
//  WzxLabel.m
//  弹幕Demo
//
//  Created by wordoor－z on 15/11/23.
//  Copyright © 2015年 wzx. All rights reserved.
//

#import "WzxLabel.h"

@implementation WzxLabel
{
    NSString * _title;
}
-(id)initWithTitle:(NSString *)title andViewWidth:(CGFloat)myWidth andTheHigh:(CGFloat)theHigh andTheLow:(CGFloat)theLow
{
    if (self  == [super init])
    {
        _title = title;
        self.frame = CGRectMake(myWidth,theHigh + (arc4random()%(int)(theLow - theHigh)), [self boundingRectWithTitle:title], WlabelHeight);
        self.text = title;
        [UIView animateWithDuration:WDuration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            CGRect rect = self.frame;
            rect.origin.x = - self.frame.size.width;
            self.frame = rect;
        } completion:^(BOOL finished) {
            [self removeFromSuperview];
        }];
    }
    return self;
}
- (CGFloat)boundingRectWithTitle:(NSString *)title
{
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    
    CGSize retSize = [_title boundingRectWithSize:CGSizeMake(MAXFLOAT, WlabelHeight)
                                             options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    
    return retSize.width;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
