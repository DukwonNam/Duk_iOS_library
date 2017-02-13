//
//  BNRHypnosisView.m
//  ios
//
//  Created by dukwonnam on 2017. 2. 11..
//  Copyright © 2017년 dukwonnam. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (void)drawRect:(CGRect)rect {
//    [super drawRect:rect];
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
//    float maxRadius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    float maxRadius = hypotf(bounds.size.width, bounds.size.height);
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    path.lineWidth = 10;
    path.stroke;

    UIImage *logoImage = [UIImage imageNamed:@"app_icon.png"];
    [logoImage drawInRect:bounds];
}

@end
