//
//  UIBezierPath+Arrow.h
//  CGM_Collector
//
//  Created by Nathaniel Hamming on 2015-01-14.
//  Copyright (c) 2015 eHealth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (Arrow)

+ (UIBezierPath *)bezierPathWithArrowFromPoint:(CGPoint)startPoint
                                       toPoint:(CGPoint)endPoint
                                     tailWidth:(CGFloat)tailWidth
                                     headWidth:(CGFloat)headWidth
                                    headLength:(CGFloat)headLength;
@end
