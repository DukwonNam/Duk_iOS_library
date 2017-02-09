//
//  QuizViewController.m
//  ios
//
//  Created by dukwonnam on 2017. 2. 9..
//  Copyright © 2017년 dukwonnam. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSLog(@"QuizViewController initWithNibName");
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.questionArray = @[
                               @"From what is cognac made?",
                               @"What is 7+7?",
                               @"What is the capital of Vermont?"
                               ];
        self.answerArray = @[
                             @"Grapes",
                             @"14",
                             @"Montpelier"
                             ];
    }
    
    return self;
}

- (void)viewDidLoad {
    NSLog(@"QuizViewController viewDidLoad");

    self.questionArray = @[
                           @"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"
                           ];
    self.answerArray = @[
                         @"Grapes",
                         @"14",
                         @"Montpelier"
                         ];
}

- (IBAction)showQuestion:(id)sender {
    NSLog(@"QuizViewController showQuestion");
    
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questionArray count]) {
        // Reset to the first index
        self.currentQuestionIndex = 0;
    }
    
//    self.questionLabel.text = self.questionArray[self.currentQuestionIndex];
    NSString *question = self.questionArray[self.currentQuestionIndex];
    self.questionLabel.text = question;
    NSLog(@"showQuestion [%d]=%@", self.currentQuestionIndex, question);
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender {
    NSLog(@"QuizViewController showAnswer");
    
    NSString *answer = self.answerArray[self.currentQuestionIndex];
    NSLog(@"showAnswer [%d]=%@", self.currentQuestionIndex, answer);
    self.answerLabel.text = answer;
}

@end
