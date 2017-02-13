//
//  BNRHypnosisController.m
//  ios
//
//  Created by dukwonnam on 2017. 2. 11..
//  Copyright © 2017년 dukwonnam. All rights reserved.
//

#import "BNRHypnosisController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisController

- (void)viewDidLoad {
//    CGRect firstFrame = CGRectMake(160, 240, 100, 150);
    CGRect firstFrame = self.view.bounds;
    BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
    firstView.backgroundColor = [UIColor grayColor];
    
    CGRect secondFrame = CGRectMake(160, 240, 50, 50);
    BNRHypnosisView *secondView = [[BNRHypnosisView alloc] initWithFrame:secondFrame];
    secondView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:firstView];
    [self.view addSubview:secondView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // add Image
    UIImageView *imageView = [[UIImageView alloc] init];
    UIImage *logoImage = [UIImage imageNamed:@"app_icon.png"];
    [logoImage drawInRect:CGRectMake(160, 240, 100, 150)];
    [imageView setImage:logoImage];
    
    [self.view addSubview:imageView];
    
//    UIImageView *imageView = [[UIImageView alloc] init];
//    UIImage *logoImage = [UIImage imageNamed:@"app_icon.png"];
//    [logoImage drawInRect:CGRectMake(160, 240, 100, 150)];
//    [imageView setImage:logoImage];
}

@end
