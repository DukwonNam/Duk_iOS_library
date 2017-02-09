//
//  QuizViewController.h
//  ios
//
//  Created by dukwonnam on 2017. 2. 9..
//  Copyright © 2017년 dukwonnam. All rights reserved.
//

#ifndef QuizViewController_h
#define QuizViewController_h

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIButton *questionButton;
@property (weak, nonatomic) IBOutlet UIButton *answerButton;

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questionArray;
@property (nonatomic, copy) NSArray *answerArray;

@end


#endif /* QuizViewController_h */
