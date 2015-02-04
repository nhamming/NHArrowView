//
//  ArrowView.h
//  CGM_Collector
//
//  Created by Nathaniel Hamming on 2015-01-14.
//  Copyright (c) 2015 eHealth. All rights reserved.
//

#import <UIKit/UIKit.h>

#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)
#define RADIANS_TO_DEGREES(rad) ((rad) /  M_PI * 180.0)

@interface NHArrowView : UIView

@property(nonatomic,strong) UIColor *strokeColor;
@property(nonatomic,strong) UIColor *fillColor;
@property(nonatomic,assign) CGFloat strokeWidth;
@property(nonatomic,assign) CGFloat headWidth;
@property(nonatomic,assign) CGFloat headLength;
@property(nonatomic,assign) CGFloat tailWidth;

- (void)animatedRotateToDegrees:(CGFloat)degrees;
- (void)animatedRotateToRadians:(CGFloat)rads;
- (void)rotateToRadians:(CGFloat)rads animated:(BOOL)animated duration:(CGFloat)duration;
- (void)reset;

@end
